/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import connection.GetConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import beans.agentBean;

/**
 *
 * @author simonpeter
 */
public class agentDAO {
    public boolean registerAgent(agentBean agentBean){
        String query = "insert into agent values (?,?,?)";
        
        try {
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
        
            statement.setInt(1, agentBean.getAgentID());
            statement.setString(2, agentBean.getAgentName());
            statement.setString(3, agentBean.getRegion());

            return statement.executeUpdate()>0;
        } catch (SQLException e) {
        }
        return false;
    }
    
    public boolean deleteAgent(int agentID){
        
        String query = "delete from agent where agentID=?";
        
        try {
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
            
            statement.setInt(1, agentID);
            
            return statement.executeUpdate()>0;
        } catch (SQLException e) {
        }
        return false;
    }
    
    public agentBean getAgent(int agentID){
        
        String query = "select agentID, agentName, region from agent where agentID=?";
        
        try {
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
            statement.setInt(1, agentID);
            
            ResultSet result = statement.executeQuery();
            
            if(result.next()){
                agentBean agentBean = new agentBean();
                agentBean.setAgentID(result.getInt(1));
                agentBean.setAgentName(result.getString(2));
                agentBean.setRegion(result.getString(3));
                
                return agentBean;
            }
            
        } catch (SQLException e) {
        }
        
        return null;
    }
    
    public List<agentBean> getAgents(){
        
        List<agentBean> list = null;
        try {
            list = new ArrayList<agentBean>();
            String query = "select agentID, agentName, region from agent";
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
            ResultSet result = statement.executeQuery();
            
            while(result.next()){
                agentBean agentBean = new agentBean();
                agentBean.setAgentID(result.getInt(1));
                agentBean.setAgentName(result.getString(2));
                agentBean.setRegion(result.getString(3));
                
                list.add(agentBean);
            } 
        } catch (SQLException e) {
        }
        
        return list;
    }

    public boolean validateAgent(agentBean agentBean){
        boolean status = false;
        
        String query = "select * from agent where agentName = ? and region = ?";
        try{    
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
            statement.setString(1, agentBean.getAgentName());
            statement.setString(2, agentBean.getRegion());

            System.out.println(statement);
            ResultSet result = statement.executeQuery();
            status = result.next();

        } catch (SQLException e) {
            printSQLException(e);
        }
        return status;
    }
    
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}


