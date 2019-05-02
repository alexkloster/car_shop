package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.dao.entity.ManufactureEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface ManufactureService {

    List<ManufactureEntity> getAllManufactures();
}
