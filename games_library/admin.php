<?php 
session_start();
include("configuration.php"); 
$conn=mysqli_connect(DB_HOST, DB_USER, DB_PASS); 
mysqli_select_db($conn,DB_NAME);
mysqli_query($conn,"SET NAMES utf8");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>MY GAME LIBRARY</title>
<link type="text/css" rel="stylesheet" href="scripts/style.css" />
<script type="text/javascript" src="scripts/javascript.js"></script>
</head>
<body>
<?php 
$data_pages = array("list"=>"All Games","add"=>"New Game");
if(isset($_GET['page'])){ $page = $_GET['page']; }else{ $page="list"; }
include("scripts/functions.php"); 

// SAVE/NEW
if(isset($_POST['save'])){
	$category = $_POST['category'];
	$title = mysqli_real_escape_string($conn,strip_tags($_POST['title']));
	$url_name = mysqli_real_escape_string($conn,strip_tags($_POST['url_name']));
	$image = mysqli_real_escape_string($conn,strip_tags($_POST['image']));
	$website = mysqli_real_escape_string($conn,strip_tags($_POST['website']));
	$video = mysqli_real_escape_string($conn,strip_tags($_POST['video']));
	$bio = mysqli_real_escape_string($conn,strip_tags($_POST['bio']));
	if(isset($_POST['id'])){
		$id = $_POST['id'];
		mysqli_query($conn, "UPDATE categories SET category='$category',title='$title',url_name='$url_name',image='$image',website='$website',video='$video',bio='$bio' WHERE game_id=$id");
	}else{
		mysqli_query($conn, "INSERT INTO categories SET category='$category',title='$title',url_name='$url_name',image='$image',website='$website',video='$video',bio='$bio'");
	}
}
// DELETE
if(isset($_GET['delete_id'])){
	$delete_id = $_GET['delete_id'];
	mysqli_query($conn, "DELETE FROM categories WHERE game_id=$delete_id");
}

// LOGOUT
if(isset($_GET['logout'])){
	unset($_SESSION['pass']);
}

?>
<div id="main">
	<h1><a href="<?=DOMAIN?>/admin.php"><img src="./images/steam-logo.png" alt="Steam"></a></h1>
	<hr />
	<?php 
	if(isset($_POST['username'])){
		if($_POST['username']==$admin_username && $_POST['password']==$admin_password){
			$_SESSION['pass'] = "ok";
		}else{
			echo "<b style=\"color:red;\">WRONG USERNAME AND/OR PASSWORD</b><br /><br />";
		}
	}
	if(isset($_SESSION['pass'])){
		$pass=$_SESSION['pass'];
	}else{
		$pass="no";
	}

	if($pass=="ok"){
		echo "<a href=\"admin.php?logout=1\">LOGOUT</a><hr />";
		echo "<div id=\"menu\">\n";
		foreach($data_pages as $url=>$title){
			if($url==$page){ $selected="selected"; }else{ $selected=""; }
			echo "<a class=\"menu-item $selected\" href=\"admin.php?page=$url\">$title</a>\n";
		}
		echo "</div>\n";
		?>
		<hr />
		<?php 
		if($page=="add" || $page=="edit"){
			// ADD/EDIT form
			echo "<form action=\"admin.php?page=list\" method=\"post\" onsubmit=\"return validate_admin();\" >\n";
			echo "<input type=\"hidden\" name=\"save\" value=\"1\" />";
			echo "<table class=\"form-table\">\n";
			if(isset($_GET['id'])){
				$id = $_GET['id'];
				echo "<input type=\"hidden\" name=\"id\" value=\"$id\" />\n";
			}else{
				$id = 0;
			}
			if($page=="edit"){
				$sql="SELECT * FROM categories WHERE game_id=$id";
				$result = mysqli_query($conn, $sql);
				$row=mysqli_fetch_array($result);
			} else {
				$row['title']=$row['url_name']=$row['image']=$row['website']=$row['video']=$row['bio']='';
			}	
			$row['title']=stripslashes($row['title']);
			$row['bio']=stripslashes($row['bio']);
			
			echo "<tr><td class=\"t-right\">Category</td><td>\n<select id=\"category\" name=\"category\">";
			echo "<option value=\"0\">Select category</option>";
			foreach($game_categories as $value=>$label){
				if($value==$row['category']){ $selected="selected"; }else{ $selected=""; }
				echo "<option $selected value=\"$value\">$label</option>";
			}
			echo "</select>\n</td></tr>\n";
			
			echo "<tr><td class=\"t-right\">Title</td><td><input class=\"input-text\" type=\"text\" id=\"title\" name=\"title\" value=\"$row[title]\" /></td></tr>\n\n";
			echo "<tr><td class=\"t-right\">URL name</td><td><input class=\"input-text\" type=\"text\" id=\"url_name\" name=\"url_name\" value=\"$row[url_name]\" /></td></tr>\n\n";
			echo "<tr><td class=\"t-right\">Image filename</td><td><input class=\"input-text\" type=\"text\" id=\"image\" name=\"image\" value=\"$row[image]\" /></td></tr>\n\n";
			echo "<tr><td class=\"t-right\">Website</td><td><input class=\"input-text\" type=\"text\" id=\"website\" name=\"website\" value=\"$row[website]\" /></td></tr>\n\n";
			echo "<tr><td class=\"t-right\">Video</td><td><input class=\"input-text\" type=\"text\" id=\"video\" name=\"video\" value=\"$row[video]\" /></td></tr>\n\n";
			echo "<tr><td class=\"t-right\">Bio</td><td><textarea class=\"textarea\" id=\"bio\" name=\"bio\">$row[bio]</textarea></td></tr>\n\n";
			echo "<tr><td class=\"t-right\">&nbsp;</td><td><input class=\"button\" type=\"submit\" value=\"Submit\" /></td></tr>\n\n";
			echo "</table>\n\n";
			echo "</form>\n\n";
		}else{
			// LIST ALL GAMES
			$sql="SELECT * FROM categories";
			$result = mysqli_query($conn, $sql);
			echo "<table class=\"form-table\">\n\n";
			while ($row=mysqli_fetch_array($result)) {
			$row['title']=stripslashes($row['title']);
				echo "<tr>\n<td class=\"t-right\"><b><a href=\"admin.php?page=edit&id=$row[game_id]\">$row[title]</a></b></td>\n<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"admin.php?page=list&delete_id=$row[game_id]\" title=\"DELETE\" onclick=\"return confirm_delete(this);\">X</a></td>\n</tr>\n\n";
			}
			echo "</table>\n";
		}
	
	}else{
		//LOGIN FORM
		echo "<form action=\"admin.php?page=list\" method=\"post\" onsubmit=\"return validate_login();\" >\n";
		echo "<table class=\"form-table\">\n";
		echo "<tr><td class=\"t-right\">Username</td><td><input class=\"input-text\" type=\"text\" id=\"username\" name=\"username\" /></td></tr>\n";
		echo "<tr><td class=\"t-right\">Password</td><td><input class=\"input-text\" type=\"password\" id=\"password\" name=\"password\" /></td></tr>\n";
		echo "<tr><td class=\"t-right\">&nbsp;</td><td><input class=\"button\" type=\"submit\" value=\"Submit\" /></td></tr>\n";
		echo "</table>\n";
		echo "</form>\n";
	}
	?>
	<hr />
	<?php include("includes/footer.php"); ?>
	<hr />
</div>
</body>
</html>