package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.ModelEntity;
import by.bsuir.kp.carshop.dao.repository.ModelRepository;
import by.bsuir.kp.carshop.sevice.ModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ModelServiceImpl implements ModelService {

    @Autowired
    private ModelRepository modelRepository;

    @Override
    public List<ModelEntity> getAllModels() {
        return modelRepository.findAll();
    }
}
