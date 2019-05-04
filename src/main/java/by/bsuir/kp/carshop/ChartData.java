package by.bsuir.kp.carshop;

public class ChartData {
    private String[] name;
    private String[] color;
    private Integer[] col;

    public ChartData(String[] name, String[] color, Integer[] col) {
        this.name = name;
        this.color = color;
        this.col = col;
    }

    public ChartData() {
    }

    public String[] getName() {
        return name;
    }

    public void setName(String[] name) {
        this.name = name;
    }

    public String[] getColor() {
        return color;
    }

    public void setColor(String[] color) {
        this.color = color;
    }

    public Integer[] getCol() {
        return col;
    }

    public void setCol(Integer[] col) {
        this.col = col;
    }
}
