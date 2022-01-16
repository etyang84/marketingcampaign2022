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
public class scheduleBean implements Serializable {
    private int scheduleID;
    private String uname;
    private String region;
    private String date;
    private String time;

    public scheduleBean() {
    }

    public scheduleBean(int scheduleID, String uname, String region, String date, String time) {
        this.scheduleID = scheduleID;
        this.uname = uname;
        this.region = region;
        this.date = date;
        this.time = time;
    }

    public int getScheduleID() {
        return scheduleID;
    }

    public void setScheduleID(int scheduleID) {
        this.scheduleID = scheduleID;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "scheduleBean{" + "scheduleID=" + scheduleID + ", uname=" + uname + ", region=" + region + ", date=" + date + ", time=" + time + '}';
    }
}
