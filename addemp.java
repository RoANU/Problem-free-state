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

public class addemp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        PrintWriter out=response.getWriter();
              out.println("rr");
try{  System.out.println("c-ok");
  out.println("rr");String id="";
  String gain=request.getParameter("submit");String name="";  String mobile="";   String eid ="";    String dptname=""; String address="";     String password="";
  if(gain.equals("add")){
                       name =request.getParameter("ename");
                        mobile=request.getParameter("mobile");
                     eid=request.getParameter("eid");
                        address=request.getParameter("address");
                         password=request.getParameter("pwd");
                        dptname=request.getParameter("dept");}
  if(gain.equals("remove"))
  {  id=request.getParameter("eid");
  }
System.out.println("v ok");
                       out.println("er");
                      
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
      System.out.println(ex);
                      }
                System.out.println("c-ok");
  out.println("rz");
String url="jdbc:mysql://localhost:3306/pfree";

Connection con=DriverManager.getConnection(url,"root","alish");
System.out.println("conn-ok");
  if(gain.equals("add")){
                    String qry="insert into employee values(?,?,?,?,?,?);";
                    PreparedStatement ps=con.prepareStatement(qry);
                    System.out.println("pre-ok");
  out.println("ry");
                   try{ ps.setString(1,eid);
                    ps.setString(2,password);
                    ps.setString(3,name);
                    ps.setString(4,mobile);
                    ps.setString(5,address);
                   ps.setString(6,dptname);
                  int n=ps.executeUpdate();
                  HttpSession session=request.getSession();
                      session.setAttribute("admn", gain);
                   response.sendRedirect("admin_home.jsp");
                   }catch(Exception e)
                   {out.println(e.getMessage());}
                      out.println("rx");}
   if(gain.equals("remove")){
       try{ String qry="DELETE FROM employee WHERE UID='"+id+"';";
                    PreparedStatement ps=con.prepareStatement(qry);
                  int m=  ps.executeUpdate();
                  HttpSession session=request.getSession();
                      session.setAttribute("admn", gain);
                   response.sendRedirect("admin_home.jsp");}catch(Exception e){
                   out.println(e.getMessage());}
   }
}catch(Exception ex){
System.out.println(ex);
 response.sendRedirect("admin_home.jsp");
}       
        
           }
        
      
                 
        
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(log.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(log.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
