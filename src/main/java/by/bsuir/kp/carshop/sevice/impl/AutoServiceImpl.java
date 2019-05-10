package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.AutoEntity;
import by.bsuir.kp.carshop.dao.repository.AutoRepository;
import by.bsuir.kp.carshop.filtering.AutoFiltering;
import by.bsuir.kp.carshop.sevice.AutoService;
import by.bsuir.kp.carshop.sevice.EngineService;
import by.bsuir.kp.carshop.sevice.ModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AutoServiceImpl implements AutoService {

    @Autowired
    private AutoRepository autoRepository;

    @Autowired
    private ModelService modelService;

    @Autowired
    private EngineService engineService;

    @Override
    public List<AutoEntity> getAllCars() {
        return autoRepository.findAll();
    }

    @Override
    public List<AutoEntity> filterCars(AutoFiltering filtering) {
        List<AutoEntity> cars = autoRepository.findAll();

        return cars.stream().filter(car -> {
            boolean minPrice = true;
            if (filtering.getMinCost() != null) {
                minPrice = car.getEngine().getCost() + car.getModel().getCost() >= filtering.getMinCost();
            }
            boolean maxPrice = true;
            if (filtering.getMaxCost() != null) {
                maxPrice = car.getEngine().getCost() + car.getModel().getCost() <= filtering.getMaxCost();
            }

            return minPrice && maxPrice && modelService.checkModel(car.getModel(), filtering.getModel()) &&
                    engineService.checkEngine(car.getEngine(), filtering.getEngine());
        }).collect(Collectors.toList());
    }

    @Override
    public AutoEntity getById(Long id) {
        return autoRepository.findById(id).orElse(new AutoEntity());
    }

    @Override
    public AutoEntity save(AutoEntity autoEntity) {
        return autoRepository.save(autoEntity);
    }

    @Override
    public void deleteById(Long id) {
        autoRepository.deleteById(id);
    }
}
