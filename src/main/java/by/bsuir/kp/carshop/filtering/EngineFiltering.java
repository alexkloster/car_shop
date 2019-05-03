package by.bsuir.kp.carshop.filtering;

public class EngineFiltering {

    private String name;

    private int minPower;

    private int maxPower;

    private Double minCapacity;

    private Double maxCapacity;

    private Double minConsumption;

    private Double maxConsumption;

    private Double minCost;

    private Double maxCost;

    public EngineFiltering(String name, int minPower, int maxPower, Double minCapacity, Double maxCapacity, Double minConsumption, Double maxConsumption, Double minCost, Double maxCost) {
        this.name = name;
        this.minPower = minPower;
        this.maxPower = maxPower;
        this.minCapacity = minCapacity;
        this.maxCapacity = maxCapacity;
        this.minConsumption = minConsumption;
        this.maxConsumption = maxConsumption;
        this.minCost = minCost;
        this.maxCost = maxCost;
    }

    public EngineFiltering() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMinPower() {
        return minPower;
    }

    public void setMinPower(int minPower) {
        this.minPower = minPower;
    }

    public int getMaxPower() {
        return maxPower;
    }

    public void setMaxPower(int maxPower) {
        this.maxPower = maxPower;
    }

    public Double getMinCapacity() {
        return minCapacity;
    }

    public void setMinCapacity(Double minCapacity) {
        this.minCapacity = minCapacity;
    }

    public Double getMaxCapacity() {
        return maxCapacity;
    }

    public void setMaxCapacity(Double maxCapacity) {
        this.maxCapacity = maxCapacity;
    }

    public Double getMinConsumption() {
        return minConsumption;
    }

    public void setMinConsumption(Double minConsumption) {
        this.minConsumption = minConsumption;
    }

    public Double getMaxConsumption() {
        return maxConsumption;
    }

    public void setMaxConsumption(Double maxConsumption) {
        this.maxConsumption = maxConsumption;
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
