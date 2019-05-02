package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.OrderEntity;
import by.bsuir.kp.carshop.dao.repository.OrderRepository;
import by.bsuir.kp.carshop.filtering.OrderFiltering;
import by.bsuir.kp.carshop.sevice.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
//        if(params.getClientId() != null) {
//            ClientEntity clientEntity = new ClientEntity();
//            clientEntity.setId(params.getClientId());
//            filter.addCondition(new Condition.Builder().setComparison(Comparison.eq).setField("client").setValue(clientEntity).build());
//        }
//        if(params.getEngineId() != null) {
//            filter.addCondition(new Condition.Builder().setComparison(Comparison.eq).setField("auto.engine.id").setValue(params.getEngineId()).build());
//        }
//        if(params.getManufactureId() != null) {
//            filter.addCondition(new Condition.Builder().setComparison(Comparison.eq).setField("auto.model.manufacture.id").setValue(params.getManufactureId()).build());
//        }
//        if(params.getModelId() != null) {
//            filter.addCondition(new Condition.Builder().setComparison(Comparison.eq).setField("auto.model.id").setValue(params.getModelId()).build());
//        }
//        if(params.getUserId() != null) {
//            filter.addCondition(new Condition.Builder().setComparison(Comparison.eq).setField("user.id").setValue(params.getUserId()).build());
//        }
//        if (params.getReady() != null) {
//            filter.addCondition(new Condition.Builder().setComparison(Comparison.eq).setField("ready").setValue(params.getReady()).build());
//        }
        return repository.findAll();
    }
}
