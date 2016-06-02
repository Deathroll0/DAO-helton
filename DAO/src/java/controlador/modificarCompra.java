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


public class modificarCompra extends HttpServlet {

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
        String id= request.getParameter("txtId").trim();
        String fecha=request.getParameter("txtFecha").trim();
        String cantidad=request.getParameter("txtCantidad").trim();
        String precio=request.getParameter("txtPrecio").trim();
        String rut=request.getParameter("txtRut").trim();
        String codigo=request.getParameter("txtCodigo").trim();
        String error = "";
        String exito="";
        String titulo = "Modificar Compra";
        
        if(id.equals("")||id==null||fecha.equals("")||fecha==null||cantidad.equals("")||cantidad==null||precio.equals("")||precio==null
                    ||precio.equals("")||precio==null||rut.equals("")||rut==null||codigo.equals("")||codigo==null) 
            {      
                error="Campos vacíos...";
                request.getSession().setAttribute("myError", error);
                request.getSession().setAttribute("myTitulo", titulo);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }else{
            
            try{
                int idn=Integer.parseInt(id);
                int can=Integer.parseInt(cantidad);
                int pre=Integer.parseInt(precio);
                
                compraDAO dao=new compraDAO();
                compraDTO co=new compraDTO(idn, fecha, can, pre, rut, codigo);
                
                if (dao.modificar(co)) 
                {
                        exito="Se ha modificado correctamente!";
                        request.getSession().setAttribute("myExito", exito);
                        request.getSession().setAttribute("myTitulo", titulo);
                        request.getRequestDispatcher("exito.jsp").forward(request, response);

                }
                else
                {
                        error = "Ups! ha ocurrido un problema, chequea bien tus datos para modificar...";
                        request.getSession().setAttribute("myError", error);
                        request.getSession().setAttribute("myTitulo", titulo);
                        request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            }

            catch(Exception e)
            {
                error = "Campo númerico inválido...";
                request.getSession().setAttribute("myError", error);
                request.getSession().setAttribute("myTitulo", titulo);
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
