package entity;

/**
 *
 * @author Nguyễn Hoàng Anh
 */
public class Search {
    
    private String inDate;
    private String outDate;
    private String cate;
    private String adult;
    private String children;
    private double price;
    private int star;

    public Search() {
    }

    public Search(String inDate, String outDate, String cate, String adult, String children, double price, int star) {
        this.inDate = inDate;
        this.outDate = outDate;
        this.cate = cate;
        this.adult = adult;
        this.children = children;
        this.price = price;
        this.star = star;
    }

    public String getInDate() {
        return inDate;
    }

    public void setInDate(String inDate) {
        this.inDate = inDate;
    }

    public String getOutDate() {
        return outDate;
    }

    public void setOutDate(String outDate) {
        this.outDate = outDate;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getAdult() {
        return adult;
    }

    public void setAdult(String adult) {
        this.adult = adult;
    }

    public String getChildren() {
        return children;
    }

    public void setChildren(String children) {
        this.children = children;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    @Override
    public String toString() {
        return "Search{" + "inDate=" + inDate + ", outDate=" + outDate + ", cate=" + cate + ", adult=" + adult + ", children=" + children + ", price=" + price + ", star=" + star + '}';
    }
    
}
