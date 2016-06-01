/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.clienteDAO;
import dto.clienteDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class crearCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String rut= request.getParameter("txtRut").trim();
        String nombre=request.getParameter("txtNombre").trim();
        String edad=request.getParameter("txtEdad").trim();
        String error="";
        String exito="";
        String titulo="Crear Cliente";
        
        try {
            int ed=Integer.parseInt(edad);
            if (rut.equals("")||rut==null||nombre.equals("")||nombre==null||edad.equals("")||edad==null) 
            {
               error="Campo vacio, debe llenar los 3 campos para poder continuar";
               request.getSession().setAttribute("myTitulo", titulo);
                request.getSession().setAttribute("myError", error);
                request.getRequestDispatcher("error.jsp").forward(request, response);
                
            } 
            else
            {
                 clienteDAO dao=new clienteDAO();
                 clienteDTO c=new clienteDTO(rut, nombre, ed);
                if (dao.insertar(c)) 
                {
                    exito="Se han insertado los datos correctamente";
                    request.getSession().setAttribute("myTitulo", titulo);
                    request.getSession().setAttribute("myExito", exito);
                    request.getRequestDispatcher("exito.jsp").forward(request, response);
                }
                else
                {
                    error = "El cliente ingresado ya existe";
                    request.getSession().setAttribute("myTitulo", titulo);
                    request.getSession().setAttribute("myError", error);
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
                
                
                
            }
            
        } catch (Exception e) {
            error="Debe ingresar numeros enteros en el campo edad";
            request.getSession().setAttribute("myTitulo", titulo);
            request.getSession().setAttribute("myError", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
            
   
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
