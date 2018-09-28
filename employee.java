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
public class employee extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
   

                    String s1=request.getParameter("uid");
                        String s2 =request.getParameter("pwd");
                        String s3=request.getParameter("type");
                      String s4="";
                      String s5="";
          if(s3.equals("employee")){
            String qr="select Ename,dpt from employee where UID=? and PWD=?";
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfree","root","root");
                PreparedStatement ps=con.prepareStatement(qr);
                ps.setString(1,s1);
                ps.setString(2,s2);
                ResultSet rs=ps.executeQuery();
                boolean b=rs.next();
                if(b){              
                    //storing userid to session object
                    s5=rs.getString(1);
                    s4=rs.getString(2);
                    HttpSession session=request.getSession();
                    session.setAttribute("employee", s4);
                    session.setAttribute("ename",s5);
                    response.sendRedirect("EMP_HOME.jsp");
                }else{
                    out.println("INVALID employee");
                        response.sendRedirect("index.jsp");
                      
                          HttpSession session=request.getSession();
                            session.setAttribute("invalid", s1);
                }
                con.close();
            }catch(Exception e){
                out.println(e);
            }
            
            
            
        }else{
            if(s1.equals("ADMIN") && s2.equals("ADMIN")){
                           HttpSession session=request.getSession();
                    session.setAttribute("admin", 1);
                   response.sendRedirect("admin_home.jsp");
            }else{
                out.println("INVALID ADMIN ACCOUNT");
                 response.sendRedirect("index.jsp");
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
        processRequest(request, response);    }

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

    