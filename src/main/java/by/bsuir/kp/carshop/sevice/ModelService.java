package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.dao.entity.ModelEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface ModelService {

    List<ModelEntity> getAllModels();
}
