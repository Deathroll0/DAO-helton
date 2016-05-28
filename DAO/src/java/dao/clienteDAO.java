/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import conexion.Conexion;
import dto.clienteDTO;
import interfaces.interfaces;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Juan Yáñez (Juan B. Yanez)
 */
public class clienteDAO implements interfaces<clienteDTO>{
    
    private static final String SQL_INSERT="INSERT INTO cliente (rut,nombre,edad) VALUES (?,?,?)";
    private static final String SQL_DELETE="DELETE FROM cliente WHERE = ?";
    private static final String SQL_UPDATE="UPDATE cliente SET nombre=?, edad=? WHERE rut=?";
    private static final String SQL_READ="SELECT * FROM cliente WHERE rut=?";
    private static final String SQL_READALL="SELECT * FROM cliente";
    
    private static final Conexion con= Conexion.saberEstado();  

    @Override
    public boolean insertar(clienteDTO c) {
        try {
            PreparedStatement ps;
            ps=con.getCon().prepareStatement(SQL_INSERT);
            ps.setString(1, c.getRut());
            ps.setString(2, c.getNombre());
            ps.setInt(3, c.getEdad());
            
            if(ps.executeUpdate()>0)
            {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(clienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            con.cerrarConexion();
        }
        return false;
        
    }

    @Override
    public boolean eliminar(Object key) {
        try {
            PreparedStatement ps;
            ps=con.getCon().prepareStatement(SQL_DELETE);
            ps.setString(1, key.toString());
            if(ps.executeUpdate()>0)
            {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(clienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
        con.cerrarConexion();
        }
        return false;
    }

    @Override
    public boolean modificar(clienteDTO c) {
        try {
            PreparedStatement ps;
            ps=con.getCon().prepareStatement(SQL_UPDATE);
            ps.setString(1, c.getNombre());
            ps.setInt(2, c.getEdad());
            ps.setString(3, c.getRut());
            if(ps.executeUpdate()>0)
            {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(clienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            con.cerrarConexion();
        }
        return false;
        
    }

    @Override
    public clienteDTO read(Object key) {
        PreparedStatement ps;
        ResultSet res;
        clienteDTO c=null;
        try {
            ps=con.getCon().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            res=ps.executeQuery();
            
            while (res.next()) {
                c= new clienteDTO(res.getString(1), res.getString(1), res.getInt(3));
            }
            return c;
        } catch (SQLException ex) {
            Logger.getLogger(clienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            con.cerrarConexion();
        }
        return c;
       
    }

    @Override
    public List<clienteDTO> readAll() {
        PreparedStatement ps;
        ResultSet res;
        clienteDTO c;
        ArrayList<clienteDTO> clientes=new ArrayList<>();
        try {
            ps=con.getCon().prepareStatement(SQL_READALL);
            res=ps.executeQuery();
            while (res.next()) {
                clientes.add(new clienteDTO(res.getString(1), res.getString(2), res.getInt(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(clienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            con.cerrarConexion();
        }
        return clientes;   
    }

    
}
