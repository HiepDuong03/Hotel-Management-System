package entity;

/**
 *
 * @author Nguyễn Hoàng Anh
 */
public class Booking {
   private int bookid;
    private int userId;
    private String name;
    private String cmnd;
    private String std;
    private String image;
    private String bookDate;
    private String complateDate;
    private String inDate;
    private String outDate;
    private int roomId;
    private String roomName;
    private int statusId;

    public Booking() {
    }

    public Booking(int bookid, int userId, String name, String cmnd, String std, String image, String bookDate, String inDate, String outDate, int roomId, String roomName, int statusId) {
        this.bookid = bookid;
        this.userId = userId;
        this.name = name;
        this.cmnd = cmnd;
        this.std = std;
        this.image = image;
        this.bookDate = bookDate;
        this.inDate = inDate;
        this.outDate = outDate;
        this.roomId = roomId;
        this.roomName = roomName;
        this.statusId = statusId;
    }

    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getStd() {
        return std;
    }

    public void setStd(String std) {
        this.std = std;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getBookDate() {
        return bookDate;
    }

    public void setBookDate(String bookDate) {
        this.bookDate = bookDate;
    }

    public String getComplateDate() {
        return complateDate;
    }

    public void setComplateDate(String complateDate) {
        this.complateDate = complateDate;
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

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    @Override
    public String toString() {
        return "Booking{" + "bookid=" + bookid + ", userId=" + userId + ", name=" + name + ", cmnd=" + cmnd + ", std=" + std + ", image=" + image + ", bookDate=" + bookDate + ", complateDate=" + complateDate + ", inDate=" + inDate + ", outDate=" + outDate + ", roomId=" + roomId + ", roomName=" + roomName + ", statusId=" + statusId + '}';
    }

   
  
}
