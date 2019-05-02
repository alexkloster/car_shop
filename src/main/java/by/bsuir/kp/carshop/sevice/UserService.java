package by.bsuir.kp.carshop.sevice;


import by.bsuir.kp.carshop.dao.entity.UserEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface UserService {

    UserEntity authorisation(String login, String password);

    UserEntity registration(UserEntity userEntity);


    void deleteUser(Long id);

    List<UserEntity> getAllUsers();

    UserEntity findById(Long id);

    UserEntity getCurrentUser();

    void setCurrentUser(UserEntity entity);
}
