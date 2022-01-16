/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author simonpeter
 */
public class GetConnection {
    private static Connection connection;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost/marketingCampaign","root","");
            
            System.out.println("Connection Successful....");
            return connection;
        }catch(ClassNotFoundException e){
        }catch(SQLException e){
        }
        return null;
    }
    public static void main(String [] args){
        getConnection();
    }
}
