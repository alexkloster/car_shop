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
}
