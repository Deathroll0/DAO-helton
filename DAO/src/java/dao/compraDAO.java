/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import conexion.Conexion;
import dto.compraDTO;
import interfaces.interfaces;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class compraDAO implements interfaces<compraDTO>{
    private static final String SQL_INSERT = "INSERT INTO compra ( Fecha, Cantidad, Precio, Rut, Cod_Producto) VALUES ( ?, ?, ?, ?, ?)";
    private static final String SQL_DELETE = "DELETE FROM compra WHERE Id = ? ";
    private static final String SQL_UPDATE = "UPDATE compra SET Fecha = ?, Cantidad = ?, Precio = ?, Rut = ?, Cod_Producto = ? WHERE Id = ? ";
    private static final String SQL_READ = "SELECT * FROM compra WHERE Id = ? ";
    private static final String SQL_READALL = "SELECT * FROM compra ";
    
    private static final Conexion con = Conexion.saberEstado();

    @Override
    public boolean insertar(compraDTO c) {
        try {
            PreparedStatement ps;
            ps = con.getCon().prepareStatement(SQL_INSERT);
//            ps.setInt(1, c.getId());
            ps.setString(1, c.getFecha());
            ps.setInt(2, c.getCantidad());
            ps.setInt(3, c.getPrecio());
            ps.setString(4, c.getRut());
            ps.setString(5, c.getCod_prod());
            
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
            ps.setInt(1, Integer.valueOf(key.toString()));
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
    public boolean modificar(compraDTO c) {
        PreparedStatement ps;
        
        try {
            
            
            ps = con.getCon().prepareStatement(SQL_UPDATE);
            ps.setString(1, c.getFecha());
            ps.setInt(2, c.getCantidad());
            ps.setInt(3, c.getPrecio());
            ps.setString(4, c.getRut());
            ps.setString(5, c.getCod_prod());
            ps.setInt(6, c.getId());
            
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
    public compraDTO read(Object key) {
       PreparedStatement ps;
            
            ResultSet res;
            compraDTO co = null;
        try {
            ps = con.getCon().prepareStatement(SQL_READ);
            ps.setInt(1, Integer.valueOf(key.toString()));
            res = ps.executeQuery();
            while (res.next()) {
                co = new compraDTO(res.getInt(1), res.getString(2), res.getInt(3), res.getInt(4), res.getString(5), res.getString(6));
            }
            return co;
        } catch (SQLException ex) {
            Logger.getLogger(productoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return co;
    }

    @Override
    public List<compraDTO> readAll() {
        PreparedStatement ps;
            
            ResultSet res;
            ArrayList<compraDTO> lista = new ArrayList<>();
        try {
            ps = con.getCon().prepareStatement(SQL_READALL);
            res = ps.executeQuery();
            
            while (res.next()) {
                compraDTO p = new compraDTO(res.getInt(1), res.getString(2), res.getInt(3), res.getInt(4), res.getString(5), res.getString(6));
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
