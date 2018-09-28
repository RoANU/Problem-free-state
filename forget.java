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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin-pc
 */
public class forget extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
               String s1=request.getParameter("UID");
                        String s2 =request.getParameter("name");
                        String s3=request.getParameter("MOB");
                        String s4 =request.getParameter("pwd");
                      
                      String s5 =request.getParameter("pwd1");
      out.println("sss");
            String qr="select UID from employee where UID=? and Ename=? and mobile=?;";
            try{out.println("sss");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfree","root","alish");
                PreparedStatement ps=con.prepareStatement(qr);
                ps.setString(1,s1);out.println("sss");
                ps.setString(2,s2);
                ps.setString(3,s3);out.println("sss");
                ResultSet rs=ps.executeQuery();
                boolean b=rs.next();
                if(b){   out.println("sss");         
                    //storing userid to session object
                    qr="update employee set PWD=? where UID=?;";
                    ps=con.prepareStatement(qr);
                    ps.setString(1,s4);out.println("sss");
                    ps.setString(2,s1);out.println("sss");
                    int n=ps.executeUpdate();out.println("sss");
                    HttpSession session=request.getSession();
                    session.setAttribute("pwd", s1);
                    response.sendRedirect("index.jsp");
                  
                  
                }else{
                    out.println("INVALID employee");
                        response.sendRedirect("fgtpwd.jsp");
                      
                          HttpSession session=request.getSession();
        
                    session.setAttribute("invalid1", s1);
                }
                con.close();
            }catch(Exception e){
                out.println(e);
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
