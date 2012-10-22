<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    
    <%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  
<style type="text/css">
<!--
@import url("style.css");
-->
</style>
<script type="text/javascript" src="script/myFunctions.js"></script>

<link href="css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="css/jquery.css">
<link rel="stylesheet" href="css/demos.css">


 <script src="script/jquery-min.js"></script>
  <script src="script/jquery-ui.min.js"></script>

 
</head>

<script>
	$(function() {
		$( "#accordion" ).accordion({
			collapsible: false ,autoHeight: false });
	});
	</script>
  
<body  onkeydown="handleKey(event);" >

 <form method="post" action="update.action" autocomplete="off">
 
<div id="accordion">
	<h3><a href="#">Person detail</a></h3>
   
    
   
    <div id="fragment-1">
       <table width="100%"  cellpadding="0" cellspacing="3">

<input type="hidden"  name = "serialNumber" value="<s:property value="searchObj.serialNumber"/>" />

<tr>
<td colspan="4"> <s:actionerror /></td>

</tr> 
<tr>
	<td width="15%">First Name <font color="red">*</font></td>
	<td width="35%"><input type="text" id="jFirstName" name = "firstName" maxlength="50" value="<s:property value="searchObj.firstName"/>" /> </td>
	<td width="15%">Last Name<font color="red">*</font></td>
	<td width="35%"><input type="text" id="jLastName" name = "lastName" maxlength="50" value="<s:property value="searchObj.lastName"/>" /> </td>
</tr>

<tr>
	<td>Address</td>
	<td><input type="text" id="address"  size="30" name = "address" maxlength="50" value="<s:property value="searchObj.address"/>" /> </td>
	<td>City</td>
	<td><input type="text" id="city" name = "city"  maxlength="50" value="<s:property value="searchObj.city"/>" /> </td>
</tr>

<tr>
	<td>State</td>
	<td><input type="text" id="state" name = "state" maxlength="50" value="<s:property value="searchObj.state"/>" /> </td>
	<td>Zip</td>
	<td><input type="text" id="zip" name = "zip"  value="<s:property value="searchObj.zip"/>" /> </td>
</tr>

<tr>
	
	<td>Email <font color="red">*</font></td>
	<td><input type="text" id="email" name = "email" size="30" value="<s:property value="searchObj.email"/>" /> </td>
	
		<td>Cell phone <font color="red">*</font></td>
	<td><input type="text" id="cellPhone"  maxlength="12" size="12" name = "cellPhone" value="<s:property value="searchObj.cellPhone"/>" /> </td>
	
</tr>




<tr>
	<td>Home Phone</td>
	<td><input type="text" id="homePhone" maxlength="12" size="12" name = "homePhone" value="<s:property value="searchObj.homePhone"/>" /> </td>
		<td>Spouse Name</td>
	<td><input type="text" id="spouseName" name = "spouseName" value="<s:property value="searchObj.spouseName"/>" /> </td>
	
</tr>



<tr>
	<td>Spouse Email</td>
	<td><input type="text" id="spouseEmail" name = "spouseEmail" size="30" value="<s:property value="searchObj.spouseEmail"/>"  /> </td>
		<td colspan="1">Spouse Cell</td>
	<td colspan="3"><input type="text" id="spouseCellPhone" name = "spouseCellPhone"  value="<s:property value="searchObj.spouseCellPhone"/>" /> </td>
	
</tr>



<tr>
	<td onClick="toggle('prasad',event);" class='tgl' >Prasad /Calendar<input type="checkbox" value="CHECKED" <s:property value="searchObj.prasad" /> id="prasad" name="prasad" /></td>
	<td onClick="toggle('balPrakash',event);"  class='tgl' >Bal Prakash: <input type="checkbox" value="CHECKED" <s:property value="searchObj.balPrakash" /> id="balPrakash" name="balPrakash" /> </td>
	
</tr>
       </table>
    </div>
   
   
    <h3><a href="#">Children Detail</a></h3>
    
    
    <div id="fragment-2">
    
   
	<table style="width: 100%" >
		<tr>
		<td>Name</td>
		<td>Date of Birth</td>
		<td>Gender</td>
		<td>Enrolled for Guj Class</td>
		</tr>
		
	

		
		<s:iterator status="stat" value="searchObj.childrens" >
   		<tr>
   			
   			<td><input type="text" value="<s:property value="childName" />" id="childName<s:property value="#stat.index + 1" />" name = "childName<s:property value="#stat.index+1" />" /></td>
			<td><input type="text" size="10" maxlength="10" value="<s:date name="childDob" format="MM/dd/yyyy" />" id="childDob<s:property value="#stat.index+1" />" name = "childDob<s:property value="#stat.index+1" />" /></td>
			<td><select id="childGender<s:property value="#stat.index + 1" />" name="childGender<s:property value="#stat.index+1" />">
			
			
	
			
  			<option value="M"  <s:if test='childGender == "M"'> SELECTED	</s:if> >Male</option>
  			<option value="F" <s:if test='childGender == "F"'> SELECTED	</s:if> >Female</option>
  			</select> </td>
	<td><input type="checkbox" value="CHECKED" <s:property value="enrolledGujClass" /> id="enrollInd<s:property value="#stat.index + 1" />" name = "enrollInd<s:property value="#stat.index+1" />" /></td>
			
   		</tr>
   		</s:iterator>
   
   		<s:iterator status="stat" value="pendingNumber" >
   		<tr>
   			
   			<td><input type="text"  id="childName<s:property value="top" />" name = "childName<s:property value="top" />" /></td>
			<td><input type="text"  size="10" maxlength="10" id="childDob<s:property value="top" />" name = "childDob<s:property value="top" />" /></td>
			<td><select id="childGender<s:property value="top" />" name="childGender<s:property value="top" />">
  			
  			
  			<option value="M">Male</option>
  			<option value="F">Female</option>
  			</select> </td>
		<td><input type="checkbox" value="CHECKED"  id="enrollInd<s:property value="top" />" name = "enrollInd<s:property value="top" />" /></td>
   		</tr>
   		</s:iterator>
   
	 <s:if test='searchObj == null'> 
	 
	 <s:iterator status="stat" value="{1,2,3,4}" >
   		<tr>
   			
   			<td><input type="text"  id="childName<s:property value="top" />" name = "childName<s:property value="top" />" /></td>
			<td><input type="text" size="10" maxlength="10" id="childDob<s:property value="top" />" name = "childDob<s:property value="top" />" /></td>
			<td><select id="childGender<s:property value="top" />" name="childGender<s:property value="top" />">
  			
  			
  			<option value="M">Male</option>
  			<option value="F">Female</option>
  			</select> </td>
		<td><input type="checkbox" value="CHECKED"  id="enrollInd<s:property value="top" />" name = "enrollInd<s:property value="top" />" /></td>
   		</tr>
   		</s:iterator>
   
	 
	 	</s:if>
	
	
	</table>
	
	  
    </div>


<h3><a href="#">Photo detail</a></h3>
   
    <div id="fragment-3">


	<table>
		<tr>
	<td > 
	Last 4 Digit of Photo Number
	</td>
	<td>View</td>
	<td>Good Photo</td>
	</tr>
	<tr>
	<td > 
		<input type="text" id="photo1" size="10" name="photo1" value="<s:property value="searchObj.photoID1"/>" />
	</td > <td > 	 
		<input type="button" value="View" onClick="showPhoto('photo1');" />
		</td > <td >
		<input type="checkbox" id="goodPhoto1" name="goodPhoto1" value="CHECKED" <s:property value="searchObj.goodPhoto1"/> />
	</td>
	</tr>
	<tr>
	<td> 
		<input type="text" id="photo2" size="10" name="photo2" value="<s:property value="searchObj.photoID2"/>" />
		</td > <td > 
		<input type="button" value="View" onClick="showPhoto('photo2');" />
		</td > <td >
		<input type="checkbox" id="goodPhoto1" name="goodPhoto2"  value="CHECKED" <s:property value="searchObj.goodPhoto2"/> />
	 </td>
	 </tr>
	<tr>
	<td> 
		<input type="text" id="photo3" size="10" name="photo3" value="<s:property value="searchObj.photoID3"/>" />
		</td > <td > 
		<input type="button" value="View" onClick="showPhoto('photo3');" />
		</td > <td >
		<input type="checkbox" id="goodPhoto1" name="goodPhoto3"  value="CHECKED" <s:property value="searchObj.goodPhoto3"/> />
	 </td>
	 </tr>
	<tr>
	<td> 
		<input type="text" id="photo4" size="10" name="photo4" value="<s:property value="searchObj.photoID4"/>" />
		</td > <td > 
		<input type="button" value="View" onClick="showPhoto('photo4');" />
		</td > <td >
		<input type="checkbox" id="goodPhoto1" name="goodPhoto4"  value="CHECKED" <s:property value="searchObj.goodPhoto4"/> />
	 </td>
	 </tr>
 </table>
	


    </div>
    
    
    <h3><a href="#">Misc detail</a></h3>
   
    <div id="fragment-4">
    <table>
        <tr>
    <td>Gaam</td>
	
	 <td> 
	    <input type="text" id="gaam" name = "gaam" value="<s:property value="searchObj.gaam"/>" /> 
	</td>
	<td>Work Phone</td>
	<td><input type="text" id="workPhone" maxlength="12" size="12" name = "workPhone" value="<s:property value="searchObj.workPhone"/>" /> </td>	
</tr>
	
	</tr>
	
	<tr>
	
	<td>Spouse Date of Birth</td>
	<td><input type="text" id="spouseDob"  maxlength="10" size="10" name = "spouseDob"  value="<s:date name="searchObj.spouseDob" format="MM/dd/yyyy" />" /> </td>
	<td>Date of Birth</td>
	<td><input type="text" id="dob"  maxlength="10" size="11" name = "dob" value="<s:date name="searchObj.dob" format="MM/dd/yyyy" />" /> </td>
	</tr>
	
	<tr>
	<td>Spouse Work Phone</td>
	<td><input type="text" id="spouseWorkPhone" name = "spouseWorkPhone" value="<s:property value="searchObj.spouseWorkPhone"/>"  /> </td>
	</tr>
	
	</table>
   
    </div>
</div>





	

<table width="100%" style="padding-top: 10px">
<tr>
<td  align="right" ><input type="button" class="jig" value="Update" onClick="validation()" /> </td>
	<td  align="left" ><input type="button" class="jig" value="Clear" onClick="cleanfun()" /> </td>




</table>
</form>
</body>
</html>