/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import dao.compraDAO;
import dto.compraDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class buscarCompra extends HttpServlet {

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
        String id =  request.getParameter("txtId").trim();
        String error="";
        String titulo="Buscar Compra";
        
        if(id==null || id.equals(""))
        {
            error= "Campos vacíos...";
            request.getSession().setAttribute("myTitulo", titulo);
            request.getSession().setAttribute("myError", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        else
        {
            //Bug
            try{
                int id2 = Integer.parseInt(id);
                
                compraDAO dao=new compraDAO();
                compraDTO co2=dao.read(id);
                if(co2==null)
                {
                    error= "La compra buscada no se encontró en nuestros registros...";
                    request.getSession().setAttribute("myTitulo", titulo);
                    request.getSession().setAttribute("myError", error);
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
                else
                {
                    request.getSession().setAttribute("myBuscarCo", co2);
                    request.getRequestDispatcher("mostrarCompra.jsp").forward(request, response);
                }
            }catch(NumberFormatException err){
                error= "El campo debe ser númerico...";
                request.getSession().setAttribute("myTitulo", titulo);
                request.getSession().setAttribute("myError", error);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
            
            
            
            
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
