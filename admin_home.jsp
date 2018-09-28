<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    try{
     session=request.getSession();
           String  s1=(String) session.getAttribute("admn");
             session.removeAttribute("admn");
   

    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <style>
            #bod{
margin:0px;
background-color: #F0FFF0;
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
color:white;
font-family: Comic sans MS;

}
        </style>
    </head>
    <body id="bod">
        <div id="d1">
	<img  id="img1" src="mp_logo.png" />
	<p id="p1" >pfree.gov.in</p>
	<p id="p2" >state portal</p>
	<h1>
	<p id="p3"> problem free state</p>
	</h1>
	<p id="p4">Government Of Madhya Pradesh</p>
</div>
        <div id="d2"><pre>
     <p id="p5" align="center" style="margin-top:0px;font-size:20px;padding-bottom: 10px;font-family:Comic sans MS;color:white;"> welcome ADMIN                              <a  href="log" style="color:white;">logout</a></p></pre>
</div>
<div style="padding-left:200px;padding-right: 200px;padding-top: 30px;">
<form action="addemp" method="get" style="font-family:Comic sans MS;font-size:12px;"><fieldset><legend>Add Employee Here:</legend>

    <table style="padding-left:100px;">
        <tr><td>Enter Employee Id:</td><td><input type="text" name="eid"></td></tr>
        <tr><td>Enter Password:</td><td><input type="password" name="pwd"></td></tr>
        <tr><td>Enter Name:</td><td><input type="text" name="ename"></td></tr>
        <tr><td>Enter MobileNo:</td><td><input type="text" name="mobile"></td></tr>
        <tr><td>Enter Address</td><td><input type="text" name="address"></td></tr>
        <tr><td>Enter Department</td><td><input type="text" name="dept"></td></tr>
        <tr><td colspan="2"><input type="submit" name="submit" value="add" style="background-color:#4CAF50;font-size:22px;color:white;border-radius: 2px;border-width:0px;"></td></tr>
       
    </table>
    </fieldset>
</form>
</div>
<div style="padding-left:200px;padding-right: 200px;padding-top:50px;">
<form action="addemp" method="get" style="font-family:Comic sans MS;font-size:12px;"><fieldset><legend>Remove Employee Here:</legend>

    <table style="padding-left:100px;">
        <tr><td>Enter Employee Id:</td><td><input type="text" name="eid"></td></tr>
        <tr><td><input type="hidden" name="gain" value="remove" /></td></tr>
        <tr><td colspan="2"><input type="submit" name="submit" value="remove" style="background-color:#4CAF50;font-size:22px;color:white;border-radius: 2px;border-width:0px;"></td></tr>
    </table>
    </fieldset>
</form>
</div>
        <script>
<% if(s1!= null){%>
{
    alert(" Succesfully <%=s1%> ");
}
<%}
} catch(Exception e)
    {out.println(e.getMessage());
    }
%>
</script>
    </body>
</html>
