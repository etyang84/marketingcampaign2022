/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

import java.io.Serializable;

/**
 *
 * @author simonpeter
 */
public class adminBean implements Serializable {
    private int adminID;
    private String adminName;
    private String password;

    public adminBean() {
    }

    public adminBean(int adminID, String adminName, String password) {
        this.adminID = adminID;
        this.adminName = adminName;
        this.password = password;
    }

    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "adminBean{" + "adminID=" + adminID + ", adminName=" + adminName + ", password=" + password + '}';
    }
}
