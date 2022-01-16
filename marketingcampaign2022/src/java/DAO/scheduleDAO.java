/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import beans.scheduleBean;
import connection.GetConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author simonpeter
 */
public class scheduleDAO {
    public boolean registerSchedule(scheduleBean scheduleBean){
        String query = "insert into schedule values (?,?,?)";
        
        try {
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
        
            statement.setInt(1, scheduleBean.getScheduleID());
            statement.setString(2, scheduleBean.getUname());
            statement.setString(3, scheduleBean.getRegion());
            statement.setString(4, scheduleBean.getDate());
            statement.setString(4, scheduleBean.getTime());

            
            return statement.executeUpdate()>0;
        } catch (SQLException e) {
        }
        return false;
    }
    
    public boolean deleteSchedule(int scheduleID){
        
        String query = "delete from schedule where scheduleID=?";
        
        try {
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
            
            statement.setInt(1, scheduleID);
            
            return statement.executeUpdate()>0;
        } catch (SQLException e) {
        }
        return false;
    }
    
    public scheduleBean getSchedule(int scheduleID){
        
        String query = "select scheduleID, uname, region, date, time from schedule where scheduleID=?";
        
        try {
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
            statement.setInt(1, scheduleID);
            
            ResultSet result = statement.executeQuery();
            
            if(result.next()){
                scheduleBean scheduleBean = new scheduleBean();
                scheduleBean.setScheduleID(result.getInt(1));
                scheduleBean.setUname(result.getString(2));
                scheduleBean.setRegion(result.getString(3));
                scheduleBean.setDate(result.getString(4));
                scheduleBean.setTime(result.getString(5));
                
                return scheduleBean;
            }
            
        } catch (SQLException e) {
        }
        
        return null;
    }
    
    public List<scheduleBean> getSchedules(){
        
        List<scheduleBean> list = null;
        try {
            list = new ArrayList<scheduleBean>();
            String query = "select scheduleID, uname, region, date, time from schedule";
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
            ResultSet result = statement.executeQuery();
            
            while(result.next()){
                
                scheduleBean scheduleBean = new scheduleBean();
                scheduleBean.setScheduleID(result.getInt(1));
                scheduleBean.setUname(result.getString(2));
                scheduleBean.setRegion(result.getString(3));
                scheduleBean.setDate(result.getString(4));
                scheduleBean.setTime(result.getString(5));
                
                list.add(scheduleBean);
            } 
        } catch (SQLException e) {
        }
        
        return list;
    }
}
