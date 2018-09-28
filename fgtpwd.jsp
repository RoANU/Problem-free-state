<%        
              String s1=(String)session.getAttribute("invalid1");
              session.removeAttribute("invalid1");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <style type="text/css">
#bod{
margin:0px;

background-color: #F0FFF0;

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
color:white;
font-family: Comic sans MS;
font-size: 20px;
}

</style>

<script language="javascript" type="text/javascript">
<!--
function IsEmpty(){ 
 if(document.forms['form1'].UID.value === "" || document.forms['form1'].name.value === ""  || document.forms['form1'].MOB.value === "" || document.forms['form1'].pwd.value === "" || document.forms['form1'].pwd1.value === "")
{
    alert("Please ,fill all the fields");

    return false;
}
    
if(document.forms['form1'].pwd.value != document.forms['form1'].pwd1.value  )
{
    alert("Your password is not match with Re-entered password");

    return false;
}
return true;
}
//-->
</script>
    </head>
    <body id="bod">
  
<div id="d1">
	<img  id="img1" src="mp_logo.png" />
	<p id="p1" >pfree.gov.in</p>
	<p id="p2" >state portal</p>
	<h1>
	<p id="p3" >mission problem free</p>
	</h1>
	<p id="p4">Government Of Madhya Pradesh</p>
</div>
<div id="d2">
    <p align="center" style="padding:30px 0px 30px 0px;" >Enter your valid userID and Mobile number and Name below to forget your password</p>
</div>
        <div style="padding:20px 250px 0px 250px;">
            <form name="form1" action="forget" style="padding:0px 30px 20px 10px; font-family:Comic sans MS;font-size: 18px;">
                <pre>
                                <br>
              UserID                 <input type="text" name="UID" value="" size="60" maxlength="10" />
              <br>
              Name                   <input type="text" name="name" value="" size="60" maxlength="35"/>
              <br>
              Mobile                 <input type="text" name="MOB" value="" maxlength="10"/>
                            <br>
              New password           <input type="text" name="pwd" value="" maxlength="10"/>
                <br>
              Re-enter password      <input type="text" name="pwd1" value="" maxlength="10"/>
               <br> 
              <input type="submit" value="RESET" onclick="return IsEmpty();" style="background-color:#4CAF50;font-size:22px;color:white;border-radius: 2px;border-width:0px;"/>

                </pre>
            </form>
                       
        </div>
        <hr>
 <script>
  <% if(s1!= null){%>
{
    alert(" invalid User ");
}
<%}%>
</script>
    </body>        
</html>
