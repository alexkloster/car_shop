package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.ModelEntity;
import by.bsuir.kp.carshop.dao.repository.ModelRepository;
import by.bsuir.kp.carshop.filtering.ModelFiltering;
import by.bsuir.kp.carshop.sevice.ModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ModelServiceImpl implements ModelService {

    @Autowired
    private ModelRepository modelRepository;

    @Override
    public List<ModelEntity> getAllModels() {
        return modelRepository.findAll();
    }

    @Override
    public List<ModelEntity> filterModels(ModelFiltering filtering) {
        List<ModelEntity> all = modelRepository.findAll();
        return all.stream().filter(model -> checkModel(model, filtering)).collect(Collectors.toList());
    }

    @Override
    public ModelEntity getById(Long id) {
        return modelRepository.findById(id).orElse(new ModelEntity());
    }

    @Override
    public void deleteById(Long id) {
        modelRepository.deleteById(id);
    }

    @Override
    public ModelEntity save(ModelEntity modelEntity) {
        return modelRepository.save(modelEntity);
    }


    @Override
    public boolean checkModel(ModelEntity model, ModelFiltering filtering){
        boolean name = true;
        if(filtering.getName() != null && !filtering.getName().isEmpty()) {
            name = filtering.getName().equals(model.getName());
        }
        boolean manufactureName = true;
        if(filtering.getManufactureName() != null && !filtering.getManufactureName().isEmpty()) {
            manufactureName = filtering.getManufactureName().equals(model.getManufacture().getName());
        }
        boolean vehicleType = true;
        if(filtering.getVehicleTypeId() != null) {
            vehicleType = filtering.getVehicleTypeId().equals(model.getVehicleType().getId());
        }
        boolean minPrice = true;
        if(filtering.getMinCost()!=null) {
            minPrice = model.getCost() >= filtering.getMinCost();
        }
        boolean maxPrice = true;
        if(filtering.getMaxCost()!=null) {
            maxPrice = model.getCost() <= filtering.getMaxCost();
        }
        return name && manufactureName && vehicleType && maxPrice && minPrice;
    }
}
