package entity;

public class Product {
    private int productId;
    private String productName;
    private String image;
    private double purchasePrice;
    private double salePrice;

    public Product() {
    }

    public Product(int productId, String productName, String image, double purchasePrice, double salePrice) {
        this.productId = productId;
        this.productName = productName;
        this.image = image;
        this.purchasePrice = purchasePrice;
        this.salePrice = salePrice;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPurchasePrice() {
        return purchasePrice;
    }

    public void setPurchasePrice(double purchasePrice) {
        this.purchasePrice = purchasePrice;
    }

    public double getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(double salePrice) {
        this.salePrice = salePrice;
    }

    
    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", productName=" + productName + ", image=" + image
                + ", purchasePrice=" + purchasePrice + ", salePrice=" + salePrice + '}';
    }
    
    
}
