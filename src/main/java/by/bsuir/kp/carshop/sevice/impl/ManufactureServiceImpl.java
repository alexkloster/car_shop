package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.ManufactureEntity;
import by.bsuir.kp.carshop.dao.repository.ManufactureRepository;
import by.bsuir.kp.carshop.sevice.ManufactureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ManufactureServiceImpl implements ManufactureService {

    @Autowired
    private ManufactureRepository repository;

    @Override
    public List<ManufactureEntity> getAllManufactures() {

        return repository.findAll();
    }
}
