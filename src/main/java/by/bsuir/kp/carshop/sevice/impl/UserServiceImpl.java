package by.bsuir.kp.carshop.sevice.impl;


import by.bsuir.kp.carshop.dao.entity.UserEntity;
import by.bsuir.kp.carshop.dao.repository.UserRepository;
import by.bsuir.kp.carshop.sevice.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    private static final Logger LOGGER = Logger.getLogger(UserServiceImpl.class);

    private UserEntity currentUser = null;


    @Autowired
    private UserRepository userRepository;


    @Override
    public UserEntity registration(UserEntity userEntity) {

        if (userRepository.countByLogin(userEntity.getLogin()) > 0) {
            return null;
        }

        userRepository.save(userEntity);
        return userEntity;
    }

    @Override
    public UserEntity authorisation(String login, String password) {
        System.out.println(login);
        System.out.println(password);
        UserEntity userEntity = userRepository.findByLoginAndPassword(login, password).orElse(new UserEntity(login, password));
        System.out.println(userEntity.getId());
        if(userEntity.getId() != null) {
            currentUser = userEntity;
        }
        return userEntity;
    }

    @Override
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public List<UserEntity> getAllUsers() {
        return new ArrayList<>(userRepository.findAll());
    }

    @Override
    public UserEntity findById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    @Override
    public UserEntity getCurrentUser() {
        return currentUser;
    }

    @Override
    public void setCurrentUser(UserEntity entity) {
        this.currentUser = entity;
    }
}
