function IsJsonString(str) {
	str=document.forms['formFormatting'].jsonText.value;
	if(str === ""){
		 UIkit.notification({
	  		   message:'Empty JSON input',
	  		   status:'danger',
	  		   pos:'top-center',
	  		   timeout:3000
	  		   });
	    return false;
	}else{
	    try {
	        JSON.parse(str);
	    } catch (e) {
	    	 UIkit.notification({
	  		   message:'Not a JSON Object',
	  		   status:'danger',
	  		   pos:'top-center',
	  		   timeout:3000
	  		   });
	        return false;
	    }
	    return true;
	}
}
function copyToClipboard() {
	   var copyText = $('[name="jsonText"]');
	   copyText.select();
	   document.execCommand("Copy");
	   UIkit.notification({
		   message:'Copied!',
		   status:'success',
		   pos:'top-center',
		   timeout:1000
		   });
	 }