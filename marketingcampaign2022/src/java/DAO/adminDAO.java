/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import beans.adminBean;
import connection.GetConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author simonpeter
 */
public class adminDAO {
    public boolean validateAdmin(adminBean adminBean){
        boolean status = false;
        
        String query = "select * from admin where adminName = ? and password = ?";
        try{    
            PreparedStatement statement = GetConnection.getConnection().prepareStatement(query);
            statement.setString(1, adminBean.getAdminName());
            statement.setString(2, adminBean.getPassword());

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
