package com.example.hospitalmanagement1.model;
public class Contact {

    String Fullname;
    String Email;
    String Address;
    String City;
    String MessageType;
    String Subject;
    String Message;

    public String getFullname() { return Fullname; }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getEmail() { return Email; }

    public void setEmail(String Email) { this.Email = Email; }

    public String getAddress() { return Address; }

    public void setAddress(String address) { Address = address; }

    public String getCity(){ return City; }

    public void setCity(String city) { City = city; }

    public String getMessagetype() { return MessageType; }

    public void setMessageType(String messageType) { MessageType = messageType; }

    public String getSubject() { return Subject; }

    public void setSubject(String subject) { Subject = subject;}

    public String getMessage() { return Message;}

    public void setMessage(String message) { Message = message;}

        @Override
    public String toString() {

        return "queries [Fullname=" + Fullname + ", Email=" + Email + ", " +
                "Address=" + Address + ", City=" + City + ", MessageType=" + MessageType +"," +
                "Subject="+ Subject +", Message="+ Message +" ]";
    }


}
