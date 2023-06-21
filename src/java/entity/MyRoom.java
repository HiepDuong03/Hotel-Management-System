package entity;

public class MyRoom {
    
    private int roomId;
    private String roomName;
    private int roomBed;
    private String roomImg;
    private double roomSize;
    private String roomView;
    private int roomMax;
    private double roomPrice;
    private String bookDate;
    private String inDate;
    private String outDate;
    private double total;
    private int userId;

    public MyRoom() {
    }

    public MyRoom(int roomId, String roomName, int roomBed, String roomImg, double roomSize, String roomView, int roomMax, String bookDate, String inDate, String outDate, double total) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomBed = roomBed;
        this.roomImg = roomImg;
        this.roomSize = roomSize;
        this.roomView = roomView;
        this.roomMax = roomMax;
        this.bookDate = bookDate;
        this.inDate = inDate;
        this.outDate = outDate;
        this.total = total;
    }

    public MyRoom(int roomId, String roomName, int roomBed, String roomImg, double roomSize, String roomView, int roomMax, String bookDate, String inDate, String outDate, double total, int userId) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomBed = roomBed;
        this.roomImg = roomImg;
        this.roomSize = roomSize;
        this.roomView = roomView;
        this.roomMax = roomMax;
        this.bookDate = bookDate;
        this.inDate = inDate;
        this.outDate = outDate;
        this.total = total;
        this.userId = userId;
    }

    public MyRoom(int roomId, String roomName, int roomBed, String roomImg, double roomSize, String roomView, int roomMax, double roomPrice, String bookDate, String inDate, String outDate, int userId) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomBed = roomBed;
        this.roomImg = roomImg;
        this.roomSize = roomSize;
        this.roomView = roomView;
        this.roomMax = roomMax;
        this.roomPrice = roomPrice;
        this.bookDate = bookDate;
        this.inDate = inDate;
        this.outDate = outDate;
        this.userId = userId;
    }

    public MyRoom(int roomId, String roomName, int roomBed, String roomImg, double roomSize, String roomView, int roomMax, double roomPrice, String bookDate, String inDate, String outDate, double total, int userId) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomBed = roomBed;
        this.roomImg = roomImg;
        this.roomSize = roomSize;
        this.roomView = roomView;
        this.roomMax = roomMax;
        this.roomPrice = roomPrice;
        this.bookDate = bookDate;
        this.inDate = inDate;
        this.outDate = outDate;
        this.total = total;
        this.userId = userId;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public int getRoomBed() {
        return roomBed;
    }

    public void setRoomBed(int roomBed) {
        this.roomBed = roomBed;
    }

    public String getRoomImg() {
        return roomImg;
    }

    public void setRoomImg(String roomImg) {
        this.roomImg = roomImg;
    }

    public double getRoomSize() {
        return roomSize;
    }

    public void setRoomSize(double roomSize) {
        this.roomSize = roomSize;
    }

    public double getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(double roomPrice) {
        this.roomPrice = roomPrice;
    }

    public String getRoomView() {
        return roomView;
    }

    public void setRoomView(String roomView) {
        this.roomView = roomView;
    }

    public int getRoomMax() {
        return roomMax;
    }

    public void setRoomMax(int roomMax) {
        this.roomMax = roomMax;
    }

    public String getBookDate() {
        return bookDate;
    }

    public void setBookDate(String bookDate) {
        this.bookDate = bookDate;
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

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "MyRoom{" + "roomId=" + roomId + ", roomName=" + roomName + ", roomBed=" + roomBed + ", roomImg=" + roomImg + ", roomSize=" + roomSize + ", roomView=" + roomView + ", roomMax=" + roomMax + ", bookDate=" + bookDate + ", inDate=" + inDate + ", outDate=" + outDate + ", total=" + total + '}';
    }
    
    
}
