package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.AutoEntity;
import by.bsuir.kp.carshop.dao.repository.AutoRepository;
import by.bsuir.kp.carshop.filtering.AutoFiltering;
import by.bsuir.kp.carshop.sevice.AutoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AutoServiceImpl implements AutoService {

    @Autowired
    private AutoRepository autoRepository;

    @Override
    public List<AutoEntity> getAllCars() {
        return autoRepository.findAll();
    }

    @Override
    public List<AutoEntity> filterCars(AutoFiltering filtering) {
        return autoRepository.findAll();
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
