package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.EngineEntity;
import by.bsuir.kp.carshop.dao.repository.EngineRepository;
import by.bsuir.kp.carshop.sevice.EngineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EngineServiceImpl implements EngineService {

    @Autowired
    private EngineRepository repository;

    @Override
    public List<EngineEntity> getAllEngines() {
        return repository.findAll();
    }
}
