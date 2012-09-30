<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

  <%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<html>
<head>
<title>Jai Swaminarayan | BAPS Shri Swaminarayan Mandir - Seattle</title>

<style type="text/css">
<!--
@import url("style.css");
-->
</style>
</head>

<body>
<script type="text/javascript"  src="script/jquery.js" ></script>



<table style="border: 0px solid black"  cellpadding="0" cellspacing="0">

<tr>
	<td valign="top" width="500px" >

	<table><tr><td width="100%">
<!-- Search form Part 1 Left Side -->
<fieldset>
  
	<form action="find.action" method="post" autocomplete="off" >
		<table  width="100%" cellpadding="0" cellspacing="2px" >
	<tr>
			<td >Search Keyword</td>
	
			<td colspan="3"><input type="text" name="keyword" size="45"  style="background-color:yellow;" id="keyword" value="<s:property value="keyword"/>"  /></td>			
		</tr>
		<!-- 
		<tr>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Email </td>
			<td>Mobile </td>
		</tr>

		<tr >
			<td><input type="text" name="firstName" size="15" id="firstName" value="<s:property value="firstName"/>" /></td>
			<td><input type="text" name="lastName" size="15" id="lastName" value="<s:property value="lastName"/>" /></td>
			<td><input type="text" name="email" id="email" size="12" value="<s:property value="email"/>" /> </td>
			<td><input type="text" name="mobile" id="mobile" size="12" value="<s:property value="mobile"/>"  /></td>
		</tr>
		
			
 -->
		

		
		<tr>
			<td colspan="4" align="center"><input type="submit" value="Search" class="jig" />
			&nbsp; 
			<input type="button" value="Clear" class="jig" onClick="cleanfun();" />
			</td>
	   </tr>

	</table>
</form>
</fieldset>

</td>
</tr>

<tr><td width="100%">

<div style="height: 350px;overflow-y: scroll;" >
<table id="newspaper-b" width="100%"   >
<tr>

<td> First Name </td>
<td> Last Name </td>
<td> Cell Phone </td>
<td> Address </td>
<td> City </td>
<!--  <td> Edit</td> -->
</tr>

<s:iterator value="searchResult" status="rowstatus">
<tr  style="cursor:hand;" onClick="javascript:showRecord('modify.action?findSerial=<s:property value="serialNumber"/>')">

<td> <s:property value="firstName"/> </td>
<td> <s:property value="lastName"/> </td>
<td> <s:property value="email"/> </td>
<td> <s:property value="address"/> </td>
<td> <s:property value="city"/> </td>
<!--  
<td> <a href="javascript:showRecord('modify.action?findSerial=<s:property value="serialNumber"/>')" > Edit </a> </td>
-->
</tr>
</s:iterator>
</table>
</div>

</td></tr></table>


</td>
<td valign="top" >
<!-- Entry form right side -->

<iframe src="display.jsp" id="ifrm" width="700px" height="600" frameborder="0" marginheight="0" ></iframe>
</td>
</tr>
</table>



</body>
<script type="text/javascript">

function showRecord(args){
	//alert(args);
	document.getElementById("ifrm").src= args;
}

function cleanfun()
{
	try{
		
		var frm_elements = document.forms[0].elements;
		
		for (i = 0; i < frm_elements.length; i++)
		{
		    field_type = frm_elements[i].type.toLowerCase();
		    switch (field_type)
		    {
		    case "text":
		    case "password":
		    case "textarea":
		    case "hidden":
		        frm_elements[i].value = "";
		        break;
		    default:
		        break;
		    }
		}
		
	}catch(e){
		alert(e); 
	}
}

</script>
</html>