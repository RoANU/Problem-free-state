import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class saveproblem2 extends HttpServlet {
static int RID=1000;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, FileUploadException{
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          

byte b[]=null;
                        String name="";
                        String mobileno ="";
                        String email="";
                        String district="";
                        String address="";
                        String problem="";
                        String dptname="";
                        String ack="";
                    DiskFileItemFactory fact=new DiskFileItemFactory();
                    ServletFileUpload up=new ServletFileUpload(fact);
                     
                    try{ 
                        List<FileItem> item=null;
                        try{
                        item=up.parseRequest(request);
                        }
                        catch(Throwable e)
                        {
                            out.println(e.getMessage());
                        }
                         out.println("LIST RUN");
                        for(FileItem it:item)
                        { 
                           String nm=it.getFieldName();
                           if(nm.equals("name"))
                           {
                           name=it.getString();out.println(name);
                           }
                               if(nm.equals("address"))
                           {
                           address=it.getString();out.println(address);
                           }
                            if(nm.equals("mobile"))
                           {
                           mobileno=it.getString();
                           }
                             if(nm.equals("eaddress"))
                           {
                           email=it.getString();
                           }
                              if(nm.equals("city"))
                           {
                           district=it.getString();
                           }
                            
                            if(nm.equals("problem"))
                           {
                           problem=it.getString();
                           }
                                
                             if(nm.equals("dptname"))
                           {
                           dptname=it.getString();
                           }
                              if(nm.equals("fileupload"))
                           {try{
                           b=it.get();out.println(b);
                           }catch(Exception e)
                           {out.println(e.getMessage());}}
                        }
                    }
                    catch(Exception e)
                    { out.println("cccf");}
                   
                    
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(saveproblem2.class.getName()).log(Level.SEVERE, null, ex);
                    out.println("eee");
                } out.println("eee");
String url="jdbc:mysql://localhost:3306/pfree";
Connection con=DriverManager.getConnection(url,"root","alish");
 out.println("eee");
                    String qry="insert into user values(?,?,?,?,?,?,?,?,?,?);";
                    PreparedStatement ps=con.prepareStatement(qry); out.println("eee");
                    ps.setString(1,name);
                    ps.setString(2,address);
                    ps.setString(3,mobileno);
                    ps.setString(4,email);
                    ps.setString(5,problem);
                    ps.setString(6,district);
                    ps.setString(7,dptname);
                             ps.setInt(8,RID);
                             try{
                             ps.setBytes(9,b);
                             ps.setString(10,ack);}
                             catch(Exception e)
                             {out.println(e.getMessage());}
                    out.println("eee");
                    try{
                   int n=ps.executeUpdate();
                    HttpSession session=request.getSession();
                    ack=Integer.toString(RID);
                            session.setAttribute("RefID",ack);
                    }
                     catch(SQLException ex)
                             {out.println(ex.getMessage());}
               RID++;
               out.println("cccf");
                 response.sendRedirect("index.jsp");
           }
        catch (SQLException ex) {
             Logger.getLogger(ack.class.getName()).log(Level.SEVERE, null, ex);
               PrintWriter out=response.getWriter();   out.println(ex);
              out.println( ex.getMessage());
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
    try {
        processRequest(request, response);
    } catch (FileUploadException ex) {
        Logger.getLogger(saveproblem2.class.getName()).log(Level.SEVERE, null, ex);
    }
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
    try {
        processRequest(request, response);
    } catch (FileUploadException ex) {
        Logger.getLogger(saveproblem2.class.getName()).log(Level.SEVERE, null, ex);
    }
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

    
