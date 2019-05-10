package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.dao.entity.EngineEntity;
import by.bsuir.kp.carshop.filtering.EngineFiltering;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface EngineService {

    List<EngineEntity> getAllEngines();

    List<EngineEntity> filterEngines(EngineFiltering filtering);

    EngineEntity getById(Long id);

    EngineEntity save(EngineEntity engineEntity);

    void deleteById(Long id);

    boolean checkEngine(EngineEntity engineEntity, EngineFiltering filtering);
}
