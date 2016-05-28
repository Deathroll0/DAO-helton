/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Juan Yáñez (Juan B. Yanez)
 */
public class Conexion {
    
    public static Conexion instance;
    private Connection con;
    
    private Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver"); // Driver
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Sistema_Venta?zeroDateTimeBehavior=convertToNull", "admin_Sis_Venta@localhost", "123"); // Url
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static Conexion saberEstado(){
        if(instance == null)
            instance = new Conexion();
        return instance;
    }
    
    public Connection getCon(){
        return con;
    }
    
    public void cerrarConexion(){
        instance = null;
    }

}