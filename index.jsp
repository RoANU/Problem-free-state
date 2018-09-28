<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
         int RID=0;
         int RID1=0;
             String qr="select MAX(RID),MIN(RID) from user;" ;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pfree","root","alish");
                PreparedStatement ps=con.prepareStatement(qr);
                ResultSet rs=ps.executeQuery();
                boolean b=rs.next();
                if(b){
                 RID=rs.getInt(1); 
                 RID1=rs.getInt(2);
                }
                     else{
                    
                    response.sendRedirect("index.jsp");
                }
             
                con.close();
            }catch(Exception e){
               // out.println(e.getMessage());
            }
            String s0=null;
            String s1=null;
            String s2=null;
             session=request.getSession();
               s0=(String)session.getAttribute("invalid");
              session.removeAttribute("invalid");
             s1=(String) session.getAttribute("RefID");
             session.removeAttribute("RefID");
         
               s2=(String)session.getAttribute("pwd");
              session.removeAttribute("pwd");

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

background-color:  #d4e6f1;

background-position:0px 100px;
}
#d1{
width:100%;
margin:0px;
}
#img1{
height:100px;
width:100px;
padding-left:100px;
padding-top:15px;
}

#p1{
position:absolute;
top:48px;
left:250px;
margin:0px;
font-size:29px;
font-family:Comic sans MS;
color:#1E90FF;
}

#p2{
position:absolute;
top:80px;
left:252px;
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
color:#1E90FF;;
}

#p4{
position:absolute;
top:78px;
left:46%;
margin:0px;
font-size:17px;
font-family:Comic sans MS;
color:#1E90FF; ;
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

.input1{
font-family:Comic sans MS;
font-size:12px;
border: 1px solid;
 
}
select{
font-family:Comic sans MS;
font-size:12px;
border: 1px solid;
  
}
.abc{
widht:200px;
height:200px;
padding:0px;
display:block;
margin:0px;
}
#d3{
float:right;
padding-right: 20px;
width:20%;

    background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);
 box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3); 
    border: 1px solid #8a4419;
border-style:solid;

}

#d4{
position:relative;
left:50px;
float:left;
margin:20px;
 box-shadow: 0 15px 20px rgba(0, 0, 0, 0.5); 
    border: 1px solid #8a4419;
    border-style: inset;
}
#d5{
position:relative;
left:100px;
float:left;
margin:20px;
 box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3); 
    border: 1px solid #8a4419;
    border-style: inset;
}
#d6{

position:relative;
left:200px;
float:left;
margin:20px;
 box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3); 
    border: 1px solid #8a4419;
    border-style: inset;
}
#d7{
position:absolute;
top:1000px;
width:70%;
padding-left:15%;
padding-right:15%;
padding-top:30px;
padding-bottom:30px;
}
p{
font-family:Comic sans MS;
font-size:15px;
}
#d9{
width:80%;
}
.second:hover{
background-color:white;
color:black;
}

</style>
<script language="javascript" type="text/javascript">
<!--
function IsEmpty(){ 
    
    
if(document.forms['form2'].uid.value === "" || document.forms['form2'].pwd.value === "" )
{
    {alert("please fill all the fields");

    return false;
}
return true;
}}
//-->
</script>
<script language="javascript" type="text/javascript">
<!--
function Empty(){ 
     
if( document.forms['form1'].RID.value === "")
{
    alert("please enter your referenceID");

    return false;
}
if(document.forms['form1'].RID.value > "<%=RID%>" || document.forms['form1'].RID.value < "<%=RID1%>")
{
    alert("INVALID referenceID");

    return false;
}
return true;
}
//-->
</script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body id="bod">
  
<div id="d1">
	<img  id="img1" src="mp_logo.png" />
	<p id="p1" >pfree.gov.in</p>
	<p id="p2" >state portal</p>
	<h1>
	<p id="p3">mission problem free</p>
	</h1>
	<p id="p4">Government Of Madhya Pradesh</p>
</div>
<div id="d2">
    <form  action="rid.jsp" name="form1" style="margin:0px;"><pre ><p style="padding:20px 20px 20px 20px;color:white;margin-bottom:0px;"> check your problem status here by enter reference id. ------->>   			ReferenceId  :<input type="number" name="RID">	<input type="submit" value="enter" onclick="return Empty();" style="background-color:blue;color:white;border-width:0px;" />  	  		<a href="" class="first" >Help</a>        <a href="" class="first" >Contact</a></p></pre></form>
</div>

<span id="d4">
<a href="lawdep.jsp"><img src="ldep.jpg" class="abc" /></a>
</span>
<span id="d5" >
<a href="healthdep.jsp"><img src="hdep.jpg"class="abc" /></a>
</span>
<span id="d3"><pre >
<form id="d31" name="form2" action="employee" method="get"style="font-family:Comic sans MS;font-size:12px;"> <fieldset><legend>Admin/Employee login :</legend>
	UserId:
	<input type="text" class="input1" name="uid"/>
        PassWord:
	<input type="password" class="input1" name="pwd" />

	<select name="type">
	<option value="employee">employee</option>
	<option value="admin">admin</option></select>
  <br>
	<input type="submit" value="SignIn" onclick="return IsEmpty();" style="background-color:#6495ed;color:white;padding:7px;border-radius:5px;"/></fieldset>
<p align="center"><a href="fgtpwd.jsp" class="second">Forget password</a>	</p>
</form></pre>
</span>
<span id="d6" >
<a href="edudep.jsp"><img src="edep.jpg" class="abc" /></a>
</span>

   
    <script>

<% if(s0!= null){%>
{
    alert("INVALID userID or password ");
}
<%}%>
   
<% if(s1!= null){%>
{
    alert("Your referenceID id is <%=s1%>");
}
<%}%>
<% if(s2!= null){%>
{
    alert(" <%=s2%>,password successfully resetted ");
}
<%}%>
</script>

</body>
</html>
