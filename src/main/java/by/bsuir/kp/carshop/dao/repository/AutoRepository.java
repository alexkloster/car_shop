package by.bsuir.kp.carshop.dao.repository;

import by.bsuir.kp.carshop.dao.entity.AutoEntity;
import by.bsuir.kp.carshop.dao.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AutoRepository extends JpaRepository<AutoEntity, Long> {
}
