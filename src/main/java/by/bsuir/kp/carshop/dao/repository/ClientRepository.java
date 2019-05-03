package by.bsuir.kp.carshop.dao.repository;

import by.bsuir.kp.carshop.dao.entity.ClientEntity;
import org.hibernate.event.spi.ClearEvent;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ClientRepository extends JpaRepository<ClientEntity, Long> {

    Optional<ClientEntity> findByPassportSeriesAndPassportNumber(String series, int number);

}
