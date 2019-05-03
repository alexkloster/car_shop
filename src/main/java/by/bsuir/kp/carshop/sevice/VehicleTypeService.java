package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.dao.entity.VehicleTypeEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface VehicleTypeService {

    List<VehicleTypeEntity> getAllVehicleTypes();
}
