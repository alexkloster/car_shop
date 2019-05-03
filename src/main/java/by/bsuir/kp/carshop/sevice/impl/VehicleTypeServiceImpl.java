package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.VehicleTypeEntity;
import by.bsuir.kp.carshop.dao.repository.VehicleTypeRepository;
import by.bsuir.kp.carshop.sevice.VehicleTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VehicleTypeServiceImpl implements VehicleTypeService {

    @Autowired
    private VehicleTypeRepository vehicleTypeRepository;

    @Override
    public List<VehicleTypeEntity> getAllVehicleTypes() {
        return vehicleTypeRepository.findAll();
    }
}
