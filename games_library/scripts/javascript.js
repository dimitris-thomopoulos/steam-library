function validate(){
	var msg = "";
	if (document.getElementById("fullname").value == 0 || document.getElementById("email").value == 0 || document.getElementById("comments").value == 0){msg = "Please fill in all fields";}
	
	if (msg!="") {alert(msg); return false;}
}

function validate_login(){
	var msg = "";
	if (document.getElementById("username").value == 0 || document.getElementById("password").value == 0){msg = "Please fill in all fields";}
	
	if (msg!="") {alert(msg); return false;}
}

function validate_admin(){
	var msg = "";
	if (document.getElementById("category").value == 0){msg += "Please select: Category\n";}
	if (document.getElementById("title").value == 0){msg += "Please fill in: Title\n";}
	if (document.getElementById("url_name").value == 0){msg += "Please fill in: URL name\n";}
	
	if (msg!="") {alert(msg); return false;}
}

function confirm_delete(the_link) {
    var is_confirmed = confirm('Confirm Deletion');
    if (is_confirmed) {
        the_link.href;
   }
    return is_confirmed;
} 