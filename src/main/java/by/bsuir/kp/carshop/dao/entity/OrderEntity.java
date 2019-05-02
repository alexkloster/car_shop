package by.bsuir.kp.carshop.dao.entity;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "orders")
public class OrderEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Double price;

    private Date firstDate;

    private Date secondDate;

    private Boolean ready;

    @ManyToOne
    @JoinColumn(name = "auto_id")
    private AutoEntity auto;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private ClientEntity client;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;

    public OrderEntity(Double price, Date firstDate, Date secondDate, Boolean ready, AutoEntity auto, ClientEntity client, UserEntity user) {
        this.price = price;
        this.firstDate = firstDate;
        this.secondDate = secondDate;
        this.ready = ready;
        this.auto = auto;
        this.client = client;
        this.user = user;
    }

    public OrderEntity() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getFirstDate() {
        return firstDate;
    }

    public void setFirstDate(Date firstDate) {
        this.firstDate = firstDate;
    }

    public Date getSecondDate() {
        return secondDate;
    }

    public void setSecondDate(Date secondDate) {
        this.secondDate = secondDate;
    }

    public Boolean getReady() {
        return ready;
    }

    public void setReady(Boolean ready) {
        this.ready = ready;
    }

    public AutoEntity getAuto() {
        return auto;
    }

    public void setAuto(AutoEntity auto) {
        this.auto = auto;
    }

    public ClientEntity getClient() {
        return client;
    }

    public void setClient(ClientEntity client) {
        this.client = client;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
}
