package by.bsuir.kp.carshop.dao.repository;

import by.bsuir.kp.carshop.dao.entity.ClientEntity;
import org.hibernate.event.spi.ClearEvent;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientRepository extends JpaRepository<ClientEntity, Long> {
}
