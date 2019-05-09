package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.EngineEntity;
import by.bsuir.kp.carshop.dao.repository.EngineRepository;
import by.bsuir.kp.carshop.filtering.EngineFiltering;
import by.bsuir.kp.carshop.sevice.EngineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class EngineServiceImpl implements EngineService {

    @Autowired
    private EngineRepository repository;

    @Override
    public List<EngineEntity> getAllEngines() {
        return repository.findAll();
    }

    @Override
    public List<EngineEntity> filterEngines(EngineFiltering filtering) {
        List<EngineEntity> engines = repository.findAll();
        return engines.stream().filter(engineEntity -> {
            boolean name = true;
            if (filtering.getName() != null && !filtering.getName().isEmpty()) {
                name = engineEntity.getName().equals(filtering.getName());
            }
            boolean minPower = true;
            if (filtering.getMinPower() != null) {
                minPower = engineEntity.getPower() >= filtering.getMinPower();
            }
            boolean maxPower = true;
            if (filtering.getMaxPower() != null) {
                maxPower = engineEntity.getPower() <= filtering.getMaxPower();
            }
            boolean minCapacity = true;
            if (filtering.getMinCapacity() != null) {
                minCapacity = engineEntity.getCapacity() >= filtering.getMinCapacity();
            }
            boolean maxCapacity = true;
            if (filtering.getMaxCapacity() != null) {
                maxCapacity = engineEntity.getCapacity() <= filtering.getMaxCapacity();
            }
            boolean minConsumption = true;
            if (filtering.getMinConsumption() != null) {
                minConsumption = engineEntity.getConsumption() >= filtering.getMinConsumption();
            }
            boolean maxConsumption = true;
            if (filtering.getMaxConsumption() != null) {
                maxConsumption = engineEntity.getConsumption() <= filtering.getMaxConsumption();
            }
            boolean minPrice = true;
            if (filtering.getMinCost() != null) {
                minPrice = engineEntity.getCost() >= filtering.getMinCost();
            }
            boolean maxPrice = true;
            if (filtering.getMaxCost() != null) {
                maxPrice = engineEntity.getCost() <= filtering.getMaxCost();
            }

            return name && minPower && maxPower && minCapacity && maxCapacity && minConsumption && maxConsumption && minPrice && maxPrice;
        }).collect(Collectors.toList());
    }

    @Override
    public EngineEntity getById(Long id) {
        return repository.findById(id).orElse(new EngineEntity());
    }

    @Override
    public EngineEntity save(EngineEntity engineEntity) {
        return repository.save(engineEntity);
    }

    @Override
    public void deleteById(Long id) {
        repository.deleteById(id);
    }
}
