<!doctype html>
<html>
<head>
<title>
mission problem free
</title>

<style type="text/css">
#bod{
margin:0px;
background-image:url("mypaint.png");
background-repeat:repeat-y;
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
height:58px;
background-color:#1E90FF;
}
h4{
    margin:0px;
}
td{
    width:25%;
}
a:hover{
    color:black;
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
</style>
   <%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/pfree";
Connection con=(Connection)DriverManager.getConnection(url,"root","alish");
String qry="select name,mobile,email,RID,problem,city from user;";
PreparedStatement ps=con.prepareStatement(qry);
ResultSet rs=ps.executeQuery();
%>

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
    <pre style="position:absolute;left:7%;font-size:20px;font-family:Comic sans MS;color:white;"> welcome EMPLOYEE                                                                                  <a href="log" class="first">LOGOUT</a> </pre>
</div>