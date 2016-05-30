/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import com.sun.xml.ws.xmlfilter.Invocation;
import conexion.Conexion;
import dto.productoDTO;
import interfaces.interfaces;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;



public class productoDAO implements interfaces<productoDTO>{

    private static final String SQL_INSERT = "INSERT INTO Producto (Cod_Producto, Nombre, Stock, Precio) VALUES (?, ?, ?, ?)";
    private static final String SQL_DELETE = "DELETE FROM Producto WHERE Cod_Producto = ? ";
    private static final String SQL_UPDATE = "UPDATE Producto SET Nombre = ?, Stock = ?, Precio = ? WHERE Cod_Producto = ? ";
    private static final String SQL_READ = "SELECT * FROM Producto WHERE Cod_Producto = ? ";
    private static final String SQL_READALL = "SELECT * FROM Producto";
    
    private static final Conexion con = Conexion.saberEstado();
    
    @Override
    public boolean insertar(productoDTO c) {
        try {
            PreparedStatement ps;
            
            
            ps = con.getCon().prepareStatement(SQL_INSERT);
            ps.setString(1, c.getCod_Producto());
            ps.setString(2, c.getNombre());
            ps.setInt(3, c.getStock());
            ps.setInt(4, c.getPrecio());
            
            if(ps.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(productoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return false;
            
    }

    @Override
    public boolean eliminar(Object key) {
        PreparedStatement ps;
        
        try {
            ps = con.getCon().prepareStatement(SQL_DELETE);
            ps.setString(1, key.toString());
            
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(productoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return false;
    }

    @Override
    public boolean modificar(productoDTO c) {
        PreparedStatement ps;
        
        try {
            
            
            ps = con.getCon().prepareStatement(SQL_UPDATE);
            ps.setString(1, c.getNombre());
            ps.setInt(2, c.getStock());
            ps.setInt(3, c.getPrecio());
            ps.setString(4, c.getCod_Producto());
            
            
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(productoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        
        return false;
    }
    
    
    //SELECT
    @Override
    public productoDTO read(Object key) {
        
        PreparedStatement ps;
            
            ResultSet res;
            productoDTO p = null;
        try {
            
            
            ps = con.getCon().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            
            res = ps.executeQuery();
            
            while (res.next()) {
                p = new productoDTO(res.getString(1), res.getString(2), Integer.parseInt(res.getString(3)), Integer.parseInt(res.getString(4)));
            }
            return p;
        } catch (SQLException ex) {
            Logger.getLogger(productoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return p;
    }

    @Override
    public List<productoDTO> readAll() {
        PreparedStatement ps;
            
            ResultSet res;
            ArrayList<productoDTO> lista = new ArrayList<>();
            
        try {
            
            
            ps = con.getCon().prepareStatement(SQL_READALL);
            
            
            res = ps.executeQuery();
            
            while (res.next()) {
                productoDTO p = new productoDTO(res.getString(1), res.getString(2),
                                    Integer.parseInt(res.getString(3)), Integer.parseInt(res.getString(4)));
                lista.add(p);
            }
            return lista;
        } catch (SQLException ex) {
            Logger.getLogger(productoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return lista;
    }
    

}
