package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.dao.entity.AutoEntity;
import by.bsuir.kp.carshop.filtering.AutoFiltering;

import javax.crypto.AEADBadTagException;
import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface AutoService {

    List<AutoEntity> getAllCars();

    List<AutoEntity> filterCars(AutoFiltering filtering);

    AutoEntity getById(Long id);

    AutoEntity save(AutoEntity autoEntity);

    void deleteById(Long id);


}
