package by.bsuir.kp.carshop.dao.repository;

import by.bsuir.kp.carshop.dao.entity.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

public interface OrderRepository extends JpaRepository<OrderEntity, Long>, JpaSpecificationExecutor<OrderEntity> {

    @Query("SELECT DISTINCT o.auto.model FROM OrderEntity o")
    Collection<ModelEntity> findDistinctByModel();

    @Query("SELECT COUNT(o) FROM OrderEntity o where o.auto.model.id = ?1")
    Integer findCountByModel(Long modelId);

    @Query("SELECT DISTINCT o.auto.model FROM OrderEntity o where o.user.id = ?1")
    Collection<ModelEntity> findDistinctByModel(Long userId);

    @Query("SELECT COUNT(o) FROM OrderEntity o where o.auto.model.id = ?1 and o.user.id = ?2")
    Integer findCountByModel(Long modelId, Long userId);

    @Query("SELECT DISTINCT o.auto.engine FROM OrderEntity o")
    Collection<EngineEntity> findDistinctByEngine();

    @Query("SELECT COUNT(o) FROM OrderEntity o where o.auto.engine.id = ?1")
    Integer findCountByEngine(Long engineId);

    @Query("SELECT DISTINCT o.auto.engine FROM OrderEntity o where o.user.id = ?1")
    Collection<EngineEntity> findDistinctByEngine(Long userId);

    @Query("SELECT COUNT(o) FROM OrderEntity o where o.auto.engine.id = ?1 and o.user.id = ?2")
    Integer findCountByEngine(Long engineId, Long userId);

    @Query("SELECT DISTINCT o.client FROM OrderEntity o")
    Collection<ClientEntity> findDistinctByClient();

    @Query("SELECT COUNT(o) FROM OrderEntity o where o.client.id = ?1")
    Integer findCountByClient(Long clientId);


    @Query("SELECT DISTINCT o.client FROM OrderEntity o where o.user.id = ?1")
    Collection<ClientEntity> findDistinctByClient(Long userId);

    @Query("SELECT COUNT(o) FROM OrderEntity o where o.client.id = ?1 and o.user.id = ?2 ")
    Integer findCountByClient(Long clientId, Long userId);


    @Query("SELECT DISTINCT o.user FROM OrderEntity o")
    Collection<UserEntity> findDistinctByUser();

    @Query("SELECT COUNT(o) FROM OrderEntity o where o.user.id = ?1")
    Integer findCountByUser(Long userId);
}
