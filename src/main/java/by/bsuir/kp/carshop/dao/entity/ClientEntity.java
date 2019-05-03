package by.bsuir.kp.carshop.dao.entity;


import javax.persistence.*;


@Entity
@Table(name = "client")
public class ClientEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String passportSeries;
    private Integer passportNumber;
    private String phone;
    private String address;

    public ClientEntity() {
    }

    public ClientEntity(String name, String passportSeries, Integer passportNumber, String phone, String address) {
        this.name = name;
        this.passportSeries = passportSeries;
        this.passportNumber = passportNumber;
        this.phone = phone;
        this.address = address;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassportSeries() {
        return passportSeries;
    }

    public void setPassportSeries(String passportSeries) {
        this.passportSeries = passportSeries;
    }

    public Integer getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(Integer passportNumber) {
        this.passportNumber = passportNumber;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    @Override
    public String toString() {
        return "ClientEntity{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", passportSeries='" + passportSeries + '\'' +
                ", passportNumber=" + passportNumber +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
