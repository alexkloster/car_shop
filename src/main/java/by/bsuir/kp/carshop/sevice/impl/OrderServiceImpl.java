package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.ChartData;
import by.bsuir.kp.carshop.dao.entity.*;
import by.bsuir.kp.carshop.dao.repository.OrderRepository;
import by.bsuir.kp.carshop.filtering.OrderFiltering;
import by.bsuir.kp.carshop.sevice.EngineService;
import by.bsuir.kp.carshop.sevice.OrderService;

import java.util.*;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository repository;

    @Override
    public List<OrderEntity> getAllOrders() {
        return repository.findAll();
    }

    @Override
    public List<OrderEntity> filterOrders(OrderFiltering params) {
        List<OrderEntity> orders = repository.findAll();
        return orders.stream().filter(order -> {
            boolean client = true;
            if(params.getClientId() != null) {
                client = order.getClient().getId().equals(params.getClientId());
            }
            boolean model = true;
            if(params.getModelId() != null) {
                model = order.getAuto().getModel().getId().equals(params.getModelId());
            }
            boolean engine = true;
            if(params.getEngineId() != null) {
                engine = order.getAuto().getEngine().getId().equals(params.getEngineId());
            }
            boolean ready = true;
            if(params.getReady() != null) {
                ready = order.getReady().equals(params.getReady());
            }
            return client && model && engine && ready;
        }).collect(Collectors.toList());
    }


    @Override
    public OrderEntity save(OrderEntity entity) {
        return repository.save(entity);
    }

    @Override
    public ChartData getModelData(UserEntity userEntity) {
        Collection<ModelEntity> models;
        if (userEntity == null) {
            models = repository.findDistinctByModel();
        } else {
            models = repository.findDistinctByModel(userEntity.getId());
        }
        List<String> names = new ArrayList<>();
        List<String> colors = generateColorsArray(models.size());
        List<Integer> count = new ArrayList<>();
        models.stream().forEach(model -> {
            names.add(model.getManufacture().getName() + " " + model.getName());
            if (userEntity == null) {
                count.add(repository.findCountByModel(model.getId()));
            } else {
                count.add(repository.findCountByModel(model.getId(), userEntity.getId()));
            }
        });
        return chartDataFromList(colors, names, count);

    }

    @Override
    public ChartData getEngineData(UserEntity userEntity) {
        Collection<EngineEntity> engines;
        if (userEntity == null) {
             engines = repository.findDistinctByEngine();
        } else {
            engines = repository.findDistinctByEngine(userEntity.getId());
        }
        List<String> names = new ArrayList<>();
        List<String> colors = generateColorsArray(engines.size());
        List<Integer> count = new ArrayList<>();
        engines.stream().forEach(engine -> {
            names.add(engine.getName());
            if (userEntity == null) {
                count.add(repository.findCountByEngine(engine.getId()));
            } else {
                count.add(repository.findCountByEngine(engine.getId(), userEntity.getId()));
            }        });
        return chartDataFromList(colors, names, count);
    }

    @Override
    public ChartData getClientData(UserEntity userEntity) {
        Collection<ClientEntity> clients;
        if (userEntity == null) {
            clients = repository.findDistinctByClient();
        } else {
            clients = repository.findDistinctByClient(userEntity.getId());
        }
        List<String> names = new ArrayList<>();
        List<String> colors = generateColorsArray(clients.size());
        List<Integer> count = new ArrayList<>();
        clients.stream().forEach(client -> {
            names.add(client.getName());
            if (userEntity == null) {
                count.add(repository.findCountByClient(client.getId()));
            } else {
                count.add(repository.findCountByClient(client.getId(), userEntity.getId()));
            }        });
        return chartDataFromList(colors, names, count);
    }

    @Override
    public ChartData getUserData() {
        Collection<UserEntity> users = repository.findDistinctByUser();
        List<String> names = new ArrayList<>();
        List<String> colors = generateColorsArray(users.size());
        List<Integer> count = new ArrayList<>();
        users.stream().forEach(user -> {
            names.add(user.getName());
                count.add(repository.findCountByUser(user.getId()));
        });
        return chartDataFromList(colors, names, count);
    }

    private ChartData chartDataFromList(List<String> colors, List<String> names, List<Integer> count) {
        String[] colorArr = new String[colors.size()];
        colorArr = colors.toArray(colorArr);
        String[] nameArray = new String[names.size()];
        nameArray = names.toArray(nameArray);
        Integer[] countArray = new Integer[count.size()];
        countArray = count.toArray(countArray);
        return new ChartData(nameArray, colorArr, countArray);
    }

    private List<String> generateColorsArray(Integer lenght) {
        List<String> colors = new ArrayList<>();
        for (int i = 0; i < lenght; i++) {
            colors.add(randomColor());
        }
        return colors;
    }

    private String randomColor() {
        Random rand = new Random();

        int r = rand.nextInt(255);
        int g = rand.nextInt(255);
        int b = rand.nextInt(255);
        return "rgb(" + r + "," + g + "," + b + ")";
    }
}
