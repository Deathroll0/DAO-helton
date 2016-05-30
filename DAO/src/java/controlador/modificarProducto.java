/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.productoDAO;
import dto.productoDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class modificarProducto extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
        String codigo = request.getParameter("txtCodigo").trim();
        String nombre=request.getParameter("txtNombre").trim();
        String stock=request.getParameter("txtStock").trim();
        String precio = request.getParameter("txtPrecio").trim();
        
        int st=0;
        int pre = 0;
        String error = "";
        String exito="";
        
        try{
            if(codigo.equals("") || stock.equals("") || nombre.equals("") || nombre==null || codigo==null || stock==null || precio.equals("")|| precio==null)
            {      
                error="campo vacio";
                request.getSession().setAttribute("myError", error);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            else
            {
                st=Integer.parseInt(stock);
                pre = Integer.parseInt(precio);
                
                productoDAO dao=new productoDAO();
                productoDTO p=new productoDTO(codigo, nombre, st, pre);
                
                if (dao.modificar(p)) 
                {
                        exito="Se ha modificado correctamente";
                        request.getSession().setAttribute("myExito", exito);
                        request.getRequestDispatcher("exito.jsp").forward(request, response);

                }
                else
                {
                        error = "Error en la modificación de datos";
                        request.getSession().setAttribute("myError", error);
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            }
        }

        catch(Exception e)
        {
            error = "Campo numerico invalido";
            request.getSession().setAttribute("myError", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
            
        }
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
