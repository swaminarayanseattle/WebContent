

function validation()
{
	var dob = document.getElementById("dob");
	var spouseDob = document.getElementById("spouseDob");
	var childob = new Array();
	childob[0] = document.getElementById("childDob1");
	childob[1] = document.getElementById("childDob2");
	childob[2] = document.getElementById("childDob3");
	childob[3] = document.getElementById("childDob4");
	
	if(dob.value != "")
	{
		if(!isDate(dob.value))
		{
			alert("Invalid Date of Birth. Valid format is MM/dd/yyyy");
			try{
			dob.focus();
			}catch(e){}
			return;
		}
	}
	if(spouseDob.value != "")
	{
		if(!isDate(spouseDob.value))
		{
			alert("Invalid Date of Birth. Valid format is MM/dd/yyyy");
			try{
			spouseDob.focus();
			}catch(e){}
			return;
		}
	}
	
	for(i =0 ; i < childob.length ; i++){
		
		if(childob[i].value != "")
		{
			if(!isDate(childob[i].value))
			{
				alert("Invalid Date of Birth. Valid format is MM/dd/yyyy");
				try{
					childob[i].focus();
				}catch(e){}
				return;
			}
		}
		
		
	}
	if(document.getElementById("jFirstName").value ==''){
		alert('First Name is required. Atleast provide first Name');
		return;
	}
	//alert(document.getElementById("email"));
	if(document.getElementById("email").value == '' && document.getElementById("cellPhone").value ==''){
		alert('Email or Cellphone is required.');
		return;
	}
	
	var r= confirm("Press a OK to Submit this Record!");
	if (r==true) {
		document.forms[0].submit();
	}

}

function isDate(txtDate) {
    var objDate,  // date object initialized from the txtDate string
        mSeconds, // txtDate in milliseconds
        day,      // day
        month,    // month
        year;     // year
    // date length should be 10 characters (no more no less)
    if (txtDate.length !== 10) {
        return false;
    }
    // third and sixth character should be '/'
    if (txtDate.substring(2, 3) !== '/' || txtDate.substring(5, 6) !== '/') {
        return false;
    }
    // extract month, day and year from the txtDate (expected format is mm/dd/yyyy)
    // subtraction will cast variables to integer implicitly (needed
    // for !== comparing)
    month = txtDate.substring(0, 2) - 1; // because months in JS start from 0
    day = txtDate.substring(3, 5) - 0;
    year = txtDate.substring(6, 10) - 0;
    // test year range
    if (year < 1000 || year > 3000) {
        return false;
    }
    // convert txtDate to milliseconds
    mSeconds = (new Date(year, month, day)).getTime();
    // initialize Date() object from calculated milliseconds
    objDate = new Date();
    objDate.setTime(mSeconds);
    // compare input date and parts from Date() object
    // if difference exists then date isn't valid
    if (objDate.getFullYear() !== year ||
        objDate.getMonth() !== month ||
        objDate.getDate() !== day) {
        return false;
    }
    // otherwise return true
    return true;
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
		    case "checkbox":
		    	 if (frm_elements[i].checked)
		         {
		             frm_elements[i].checked = false;
		         }
		         break;
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



function fnTXTFocus(varname)
{

    var objTXT = document.getElementById(varname);
    objTXT.style.borderColor = "Blue";
    

}

function fnTXTLostFocus(varname)
{
    var objTXT = document.getElementById(varname);
    objTXT.style.borderColor = "Black";
    
}

function fnOnLoad()
{
    var t = document.getElementsByTagName('INPUT');
    var i;
    for(i=0;i<t.length;i++)
    {
        if(t[i].type == "text")
        {
            t[i].addEventListener('onfocus', new Function("fnTXTFocus('"+t[i].id+ "')"),false);
            t[i].addEventListener('onblur', new Function("fnTXTLostFocus('"+t[i].id+ "')"),false);
        }
    }
}

function showPhoto(number){
	
	var photoI = document.getElementById(number).value;
	var page = 'GetImage?imageId=' + photoI;
	//var img = document.getElementById('img');
	/*img.src = 'GetImage?imageId=' + photoI;
	img.top =100;
	img.left =100;
	img.height = 400;
	img.width = 400;*/
	//win = window.open('GetImage?imageId=' + photoI, 	  'windowname2', 'width=600, height=800, directories=no, location=no, menubar=no, resizable=no, scrollbars=1, status=no, toolbar=no');
	//PopupCenter(page,'',600,600);
	var w = 800;
	var h = 600;
	var left = (screen.width/2)-(w/2);
	var top = (screen.height/2)-(h/2);
	returnValue = window.showModalDialog(page, '', 'dialogLeft:'+ left +'px;dialogTop:'+ top +'px;dialogWidth=800px;dialogHeight=600px;resizable=yes;help=no;unadorned=yes');
	//window.open();
}

function PopupCenter(pageURL, title,w,h) {
	var left = (screen.width/2)-(w/2);
	var top = (screen.height/2)-(h/2);
	var targetWin = window.open (pageURL, title, 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, copyhistory=no, width='+w+', height='+h+', top='+top+', left='+left);
	}


function handleKey(e){
	
	 var KeyID = (window.event) ? event.keyCode : e.keyCode;
	//alert(KeyID);
}

function toggle(cbkid,eve){
	
	
	if(document.getElementById(cbkid).checked) 
		document.getElementById(cbkid).checked = false;
	else
		document.getElementById(cbkid).checked = true;
	
    var e=(evt)?evt:window.event;
    if (window.event) {
        e.cancelBubble=true;
    } else {
        //e.preventDefault();
        e.stopPropagation();
    }
}