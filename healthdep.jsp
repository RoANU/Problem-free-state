<!doctype html>
<html>
<head>
<title>
mission problem free
</title>

<style type="text/css">
#bod{
margin:0px;
background-color:#eaece5;
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
#d3{
padding-left:20%;
padding-right:20%;
background-image:url("health.jpg");
height:396px;
}
#d4{
padding-left:27%;
padding-right:27%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
	padding:10px;
}


</style>
<script language="javascript" type="text/javascript">
<!--
function IsEmpty(){ 
    
    
if(document.forms['form1'].name.value === "" || document.forms['form1'].address.value === "" || document.forms['form1'].city.value === "" || document.forms['form1'].mobile.value === "" || document.forms['form1'].eaddress.value === "" || document.forms['form1'].problem.value === "")
{
    {alert("please fill all mandatory the fields( * )");

    return false;
}
alert("problem submitted succesfully,your reference id has been sent to your email");
return true;
}}
//-->
</script>

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
<p id="p5" style="position:absolute;left:7%;font-size:20px;font-family:Comic sans MS;color:white;">
welcome user
<p id="p6" style="position:absolute;right:20%;font-size:18px;font-family:Comic sans MS;color:white;"><a href="index.jsp" class="first">Home</a>|<a href="help.html"class="first">contact us</a></p></p>
</div>
<div id="d3"> 
<marquee style="font-family:Comic sans MS;color:white;font-size:30px; margin:0px;""behaviour="alternate" truespeed="truespeed" scrolldelay="100">It's a New Day in Public Health.</marquee>

<p style="padding:5px;font-family:Comic sans MS;font-size:25px;color:white;overflow:auto;" >
The Madhya Pradesh State Department of Health works to protect, promote & improve the health of all people in Madhya Pradesh through integrated state, county, & community efforts.
</div>
<div id="d5" style="float:left;width:27%;"> 

<p style="padding:20px;overflow:auto;font-size:20px;font-family:Comic sans MS;">
Public Health promotes healthy behaviors such as engaging in regular physical activity, eating healthy foods, and refraining from tobacco use, to reduce the likelihood of developing a chronic disease. We advocate for access to health care coverage and a regular source of care, or medical home, which are important for early detection and management of chronic diseases. Public Health also ensures safe drinking water, promotes childhood vaccinations, and provides sexual health education to ensure the health of all residents. Additionally, Public Health Nurses make home visits to families and to first-time pregnant women; epidemiologists investigate the sources of disease outbreaks; and, Environmental Health Specialists ensure safe food, water, and housing.  
 <p>
</div>
<div id="d6" style="float:right;width:27%;">

<h2 style="padding:10px;">Blood banks M.P. </h1>
<table>
<tr>
<th>District</th>
<th>Address of blood bank</th>
</tr>
<tr>
<td>Bhopal</td>
<td> Hamidia Hospital, Gandhi Medical College</td>
</tr>
<tr>
<td>Indore</td>
<td>M Y Hospital , MGM Medical College</td>
</tr>
<tr>
<td>Gwalior</td>
<td>JA Hospital, G R Medical College</td>
</tr>
<tr>
<td>Jabalpur</td>
<td> NSCB Medical College, Ist Floor Hospital Premises</td>
</tr>
<tr>
<td>Rewa</td>
<td>Sanjay Gandhi Memorial Hospital, S S Medical College</td>
</tr>
<tr>
<td>Ujjain</td>
<td>District Hospital</td>
</tr>
</table >
</div>
<div id="d4" >
<div style="border-style:solid;border-width:1px; background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%); box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3); ">
<h3 align="center" style="margin:0px;padding:18px;font-family:Comic sans MS;font-size:23px;">Submit your problem</h3>
<hr style="margin:0px;"/>
<form action="saveproblem2" method="post" enctype="multipart/form-data"  name="form1"  id="f1" style="padding:10px 20px 10px 20px; font-family:Comic sans MS;" >
*Name :-
<br>
<input type="text" size="35%" name="name" maxlength="35" >
<br>
<br>
*Address :-
<br>
<input type="text" size="60%" name="address" maxlength="50" >
<br>
<br>
*city
<br>
<select name="city"   >
<option value="indore">Indore</option>
<option value="Ujjain">Ujjain</option>
<option value="bhopal">Bhopal</option>
<option value="raisen">Raisen</option>
<option value="rajgarh">Rajgarh</option>
<option value="sehore">Sehore</option>
<option value="vidisha">Vidisha</option>
<option value="morena">Morena</option>
<option value="sheopur">Sheopur</option>
<option value="bhind">Bhind</option>
<option value="gwalior">Gwalior</option>
<option value="ashoknagar">Ashoknagar</option>
<option value="shivpuri">Shivpuri</option>
<option value="datia">Datia</option>
<option value="guna">Guna</option>
<option value="dhar">Dhar</option>
<option value="alirajpur">Alirajpur</option>
<option value="burhanpur">Burhanpur</option>
<option value="jhabua">Jhabua</option>
<option value="khandwa">Khandwa</option>
<option value="khargone">Khargone</option>
<option value="balaghat">Balaghat</option>
<option value="chhindwara">Chhinwara</option>
<option value="jabalpur">Jabalpur</option>
<option value="katni">Katni</option>
<option value="mandla">Mandla</option>
<option value="dindori">Dindori</option>
<option value="narsinghpur">Narsinghpur</option>
<option value="seoni">Seoni</option>
<option value="betul">Betul</option>
<option value="harda">Harda</option>
<option value="hoshngabad">Hoshngabad</option>
<option value="rewa">Rewa</option>
<option value="satna">Satna</option>
<option value="sidhi">sidhi</option>
<option value="singrauli">Singrauli</option>
<option value="chhatarpur">Chhatarpur</option>
<option value="damoh">Damoh</option>
<option value="panna">Panna</option>
<option value="sagar">Sagar</option>
<option value="tikamgarh">Tikamgarh</option>
<option value="anuppur">Anuppur</option>
<option value="shahdol">Shahdol</option>
<option value="umaria">Umaria</option>
<option value="agarmalwa">Agar Malwa</option>
<option value="mandsaur">Mandsaur</option>
<option value="dewas">Dewas</option>
<option value="neemuch">Neemuch</option>
<option value="ratlam">Ratlam</option>
<option value="shajapur">Shajapur</option>
<option value="shajapur">Barwani</option>
</select>
<br>
<br>
*Mob.no. :-
<br>
<input type="text" size="25%"  name="mobile" maxlength="10" >
<br>
<br>
*Email Address :-
<br>
<input type="text" size="60%"  name="eaddress" maxlength="30" >
<br>
<br>
*Problem description :-
<br>
<textarea rows="7" cols="50" name="problem" maxlength="500" ></textarea>
<br>
<br>
<input type="file" name="fileupload" accept="image/*"  /> Size <=100kb
<br>
<br>
<input type="hidden" name="dptname" value="health">
<p align="center" style="padding:20px;">
NOTE :- 
Please save the reference 
id which generate 
after when you will 
submit your problrem.
 By using reference id 
you can check your
problem status.
</p>
<input type="submit" onclick="return IsEmpty();" value="submit" style="background-color:#4CAF50;font-size:22px;color:white;border-radius: 2px;border-width:0px;"  >
<br>
<br>
</form>
</div>
</div>
</body>
</html>