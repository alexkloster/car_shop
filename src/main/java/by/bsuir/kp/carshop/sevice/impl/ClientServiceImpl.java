package by.bsuir.kp.carshop.sevice.impl;

import by.bsuir.kp.carshop.dao.entity.ClientEntity;
import by.bsuir.kp.carshop.dao.repository.ClientRepository;
import by.bsuir.kp.carshop.sevice.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientServiceImpl implements ClientService {

    @Autowired
    private ClientRepository clientRepository;

    @Override
    public List<ClientEntity> getAllClients() {
        return clientRepository.findAll();
    }

    @Override
    public ClientEntity getBySeriesAndNumber(ClientEntity entity) {
        System.out.println(entity.getPassportNumber());
        System.out.println(entity.getPassportSeries());
        return clientRepository.findByPassportSeriesAndPassportNumber(entity.getPassportSeries(), entity.getPassportNumber()).orElse(entity);
    }

    @Override
    public ClientEntity save(ClientEntity clientEntity) {
        return clientRepository.save(clientEntity);
    }

    @Override
    public ClientEntity getById(Long id) {
        return clientRepository.findById(id).orElse(new ClientEntity());
    }
}
