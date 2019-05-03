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
            if(filtering.getName()!=null && !filtering.getName().isEmpty()) {
                name = engineEntity.getName().equals(filtering.getName());
            }
            boolean power = engineEntity.getPower() >= filtering.getMinPower() && engineEntity.getPower()<=filtering.getMaxPower();
            boolean capacity = engineEntity.getCapacity() >= filtering.getMinCapacity() && engineEntity.getCapacity() <=filtering.getMaxCapacity();
            boolean consumption = engineEntity.getConsumption() >= filtering.getMinConsumption() && engineEntity.getConsumption()<=filtering.getMaxConsumption();
            boolean price = engineEntity.getCost() >= filtering.getMinCost() && engineEntity.getCost()<=filtering.getMaxCost();
            return  name && power && capacity && consumption && price;
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
