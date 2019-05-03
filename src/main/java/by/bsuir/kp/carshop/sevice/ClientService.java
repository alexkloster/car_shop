package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.dao.entity.ClientEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface ClientService {

    List<ClientEntity> getAllClients();

    ClientEntity getBySeriesAndNumber(ClientEntity entity);

    ClientEntity save(ClientEntity clientEntity);

    ClientEntity getById(Long id);


}
