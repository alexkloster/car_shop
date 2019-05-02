package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.dao.entity.EngineEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface EngineService {

    List<EngineEntity> getAllEngines();
}
