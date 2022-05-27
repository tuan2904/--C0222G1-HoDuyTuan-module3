public class ListCustomer {
    private String name;
    private String birthDay;
    private String address;
    private String photo;

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public ListCustomer() {
    }

    public ListCustomer(String name, String birthDay, String address,String photo) {
        this.name = name;
        this.birthDay = birthDay;
        this.address = address;
        this.photo=photo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}
