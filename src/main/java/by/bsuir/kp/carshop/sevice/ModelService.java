package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.dao.entity.ModelEntity;
import by.bsuir.kp.carshop.filtering.ModelFiltering;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface ModelService {

    List<ModelEntity> getAllModels();

    List<ModelEntity> filterModels(ModelFiltering filtering);

    ModelEntity getById(Long id);

    void deleteById(Long id);

    ModelEntity save(ModelEntity modelEntity);

    boolean checkModel(ModelEntity model, ModelFiltering filtering);
}
