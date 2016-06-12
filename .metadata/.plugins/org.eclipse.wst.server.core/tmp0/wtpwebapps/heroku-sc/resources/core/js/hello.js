$( document ).ready(function() {
	
	//alert("hello");
	
	$("#citySubmit").click(function(){
		
		var n = $("#dropdownCity").val();
		
		if(n=="Choose City"){
			alert("Please choose a city");
			return false;
		}
        
    });
   
});