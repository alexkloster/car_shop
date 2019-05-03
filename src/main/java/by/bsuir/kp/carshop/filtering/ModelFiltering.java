package by.bsuir.kp.carshop.filtering;

public class ModelFiltering {

    private String name;

    private String manufactureName;

    private Long vehicleTypeId;

    private Double minCost;
    private Double maxCost;

    public ModelFiltering(String name, String manufactureName, Long vehicleTypeId, Double minCost, Double maxCost) {
        this.name = name;
        this.manufactureName = manufactureName;
        this.vehicleTypeId = vehicleTypeId;
        this.minCost = minCost;
        this.maxCost = maxCost;
    }

    public ModelFiltering() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getManufactureName() {
        return manufactureName;
    }

    public void setManufactureName(String manufactureName) {
        this.manufactureName = manufactureName;
    }

    public Long getVehicleTypeId() {
        return vehicleTypeId;
    }

    public void setVehicleTypeId(Long vehicleTypeId) {
        this.vehicleTypeId = vehicleTypeId;
    }

    public Double getMinCost() {
        return minCost;
    }

    public void setMinCost(Double minCost) {
        this.minCost = minCost;
    }

    public Double getMaxCost() {
        return maxCost;
    }

    public void setMaxCost(Double maxCost) {
        this.maxCost = maxCost;
    }
}
