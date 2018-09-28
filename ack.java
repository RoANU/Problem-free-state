/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin-pc
 */
public class ack extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String s1=request.getParameter("RID");
           String s2=request.getParameter("ack1");
           int RID=Integer.parseInt(s1);
             
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                      out.println(RID);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(saveproblem2.class.getName()).log(Level.SEVERE, null, ex);
                    out.println("eee");
                }  out.println(RID);
String url="jdbc:mysql://localhost:3306/pfree";
Connection con=DriverManager.getConnection(url,"root","alish");
  out.println(RID);
                    String qry="update user set ack='"+s2+"' where RID='"+RID+"'";  out.println(RID);
                    PreparedStatement ps=con.prepareStatement(qry);
                   
                          int n=ps.executeUpdate();  out.println(n);
                          HttpSession session=request.getSession();
                    session.setAttribute("ackment", s1);
                          response.sendRedirect("EMP_HOME.jsp");
                        
        } catch (SQLException ex) {
            Logger.getLogger(ack.class.getName()).log(Level.SEVERE, null, ex);
               PrintWriter out=response.getWriter();   out.println(ex);
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
