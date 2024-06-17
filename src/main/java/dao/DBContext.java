/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
<<<<<<< HEAD
=======
 * 
>>>>>>> 73ef4b36460e303a6015639631cf315f59e3aa53
 */
public class DBContext {

    protected Connection connection;

    public DBContext() {
        try {
<<<<<<< HEAD
            String url = "jdbc:sqlserver://TRONG\\PHUCTRONG:1433;databaseName=GR3;encrypt=false;trustServerCertificate=true;";
            String username = "sa";
            String password = "trong2203";
=======
            String url = "jdbc:sqlserver://DESKTOP-T24FS6O\\VANSANG:1433;databaseName=Pro_SWP;encrypt=false;trustServerCertificate=true;";
            String username = "sa";
            String password = "12345";
>>>>>>> 73ef4b36460e303a6015639631cf315f59e3aa53
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
            System.out.println("ok");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }

    }
    
    public static void main(String[] args) {
        DBContext c = new DBContext();
    }
}
