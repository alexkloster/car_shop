package by.bsuir.kp.carshop.sevice;

import by.bsuir.kp.carshop.ChartData;
import by.bsuir.kp.carshop.dao.entity.OrderEntity;
import by.bsuir.kp.carshop.dao.entity.UserEntity;
import by.bsuir.kp.carshop.filtering.OrderFiltering;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface OrderService {

    List<OrderEntity> getAllOrders();

    List<OrderEntity> filterOrders(OrderFiltering params);

    OrderEntity save(OrderEntity entity);

    ChartData getModelData(UserEntity userEntity);

    ChartData getEngineData(UserEntity userEntity);

    ChartData getClientData(UserEntity userEntity);
}
