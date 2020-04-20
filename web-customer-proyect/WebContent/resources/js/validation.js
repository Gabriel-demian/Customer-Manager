function Validador()                                    
			{ 
			    var firstName = document.forms["RegForm"]["firstName"];
			    var lastName = document.forms["RegForm"]["lastName"]; 
			    var email = document.forms["RegForm"]["email"];
			   
			    if (firstName.value == "" || firstName.value.trim() == "")                                  
			    { 
			        alert("Please enter your first name."); 
			        firstName.focus(); 
			        return false; 
			    } 
			    
			    if (lastName.value == "" || lastName.value.trim() == "")                                  
			    { 
			        alert("Please enter your last name."); 
			        lastName.focus(); 
			        return false; 
			    } 
			       
			    if (email.value == "" || email.value.trim() == "")                                   
			    { 
			        alert("Please enter a valid e-mail address."); 
			        email.focus(); 
			        return false; 
			    } 
			   
			    return true; 
			}














