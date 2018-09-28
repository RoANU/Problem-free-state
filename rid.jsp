<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
         String RID=request.getParameter("RID");
          String name="";
    String city="";
    String dptname="";
      String problem="";
       String ack=""; 
             String qr="select name,city,dptname,problem,ack from user where RID='"+RID+"';" ;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfree","root","alish");
                PreparedStatement ps=con.prepareStatement(qr);
                ResultSet rs=ps.executeQuery();
                boolean b=rs.next();
                if(b){
                 
            name=rs.getString(1);
             city=rs.getString(2);
             dptname=rs.getString(3);
             problem=rs.getString(4);
             ack=rs.getString(5);
            
                }
                     else{
                    
                    response.sendRedirect("index.jsp");
                }
             
                con.close();
            }catch(Exception e){
                out.println(e.getMessage());
            }
            

%>
<!doctype html>
<html>
<head>
<title>
mission problem free
</title>

<style type="text/css">
#bod{
margin:0px;
background-color:#F0FFF0;
background-position:0px 100px;
}
#d1{
width:100%;
height:120px;
margin:0px;

}
#img1{
height:100px;
width:100px;
padding-left:170px;
padding-top:12px;
}

#p1{
position:absolute;
top:48px;
left:300px;
margin:0px;
font-size:29px;
font-family:Comic sans MS;
color:#1E90FF;
}

#p2{
position:absolute;
top:80px;
left:302px;
margin:0px;
font-size:20px;
font-family:Comic sans MS;
color:#1E90FF;
}

#p3{
position:absolute;
top:40px;
left:45%;
margin:0px;
font-size:30px;
font-family:Verdana;
color:#1E90FF;
}

#p4{
position:absolute;
top:78px;
left:46%;
margin:0px;
font-size:17px;
font-family:Comic sans MS;
color:#1E90FF;
}

#d2{
width:100%;
background-color:#1E90FF;
}

.first{
text-decoration:none;
color:white;
font-size:20px;
font-family:Arial;
}

.first:hover{
color:black;
text-decoration:underline;
font-weight:bold;
}

td {
    text-align: center;
    width:25%;
    height: 30px;
    overflow: auto;
}
table, tr, td {
    border: 1px solid black;
    border-collapse: collapse;
}
.c1{
    font-weight: bold;
}
</style>

</head>

<body id="bod">
<div id="d1">
	<img  id="img1" src="mp_logo.png" />
	<p id="p1" >pfree.gov.in</p>
	<p id="p2" >state portal</p>
	<h1>
	<p id="p3" > problem free state</p>
	</h1>
	<p id="p4">Government Of Madhya Pradesh</p>
</div>
    <div id="d2">
        <pre> <p valign="middle" style="font-size:23px;font-family:Comic sans MS;color:white;padding:0px 20px 20px 20px;margin:0px;">                                 WELCOME  <%= name %>                                                                                        <a href="index.jsp"  class="first">Home</a></p></pre>
        </div>
   

    <div id="d3" style="padding:50px 200px 50px 200px;">
        <table style="width:100%;" >
            <tr >
                <th colspan="4" height="40" style="background-color:black;color:white;font-size: 18px;">
                   Personal Information/Details
                </th>
            </tr>
            <tr >
                <td class="c1" colspan="2" >ReferenceID</td>
                <td colspan="2"><%=RID%></td>
            </tr>
            <tr>
                <td class="c1" colspan="2" >Name</td>
                <td style="text-align: center;" colspan="2"><%=name%></td>
            </tr>
            <tr>
                <td class="c1" >City</td>
                <td><%=city%></td>
            
                <td class="c1" >Department</td>
                <td><%=dptname%></td>
            </tr>
            
            <tr style="height:120px;">
                <td class="c1" >Your Problem</td>
                <td colspan="3" style="text-align: left;" >
                    <div style="overflow:auto;"> <%=problem%></div>  
                </td>
            </tr >
            <tr style="height:90px;">
                <td class="c1" >
                    Document Submitted
                </td>
                <td colspan="3" style="height:180px;overflow:auto;">
                    
                        <img height="150"  src="http://localhost:8080/pfree/refid?RID= <%=RID%>" />          
                   
                </td>
            </tr>
            <tr >
                <th colspan="4" height="40" style="background-color:black;color:white;font-size:18px;">
                    Acknowlegement
                </th>
            </tr>
            <tr style="height:120px;">
                <td class="c1" >
                    Ack Status
                </td>
                <td colspan="3" style="text-align: left;">
                   <div style="overflow:auto;"> <%=ack%></div> 
                </td>
            </tr>
        </table>  
    </div>

</body>
</html>
