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
<title>Steam | Login</title>
<link rel="icon" type="image/x-icon" href="./images/favicon.ico">
<link type="text/css" rel="stylesheet" href="scripts/style.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500;600&family=Raleway:wght@500&display=swap" rel="stylesheet"/>
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
	$trailer = mysqli_real_escape_string($conn,strip_tags($_POST['trailer']));
	$description = mysqli_real_escape_string($conn,strip_tags($_POST['description']));
	if(isset($_POST['id'])){
		$id = $_POST['id'];
		mysqli_query($conn, "UPDATE games SET category='$category',title='$title',url_name='$url_name',image='$image',website='$website',trailer='$trailer',description='$description' WHERE game_id=$id");
	}else{
		mysqli_query($conn, "INSERT INTO games SET category='$category',title='$title',url_name='$url_name',image='$image',website='$website',trailer='$trailer',description='$description'");
	}
}
// DELETE
if(isset($_GET['delete_id'])){
	$delete_id = $_GET['delete_id'];
	mysqli_query($conn, "DELETE FROM games WHERE game_id=$delete_id");
}

// LOGOUT
if(isset($_GET['logout'])){
	unset($_SESSION['pass']);
}

?>
<div id="main">
	<h1 id="header-title"><a href="<?=DOMAIN?>/index.php"><img src="./images/steam-logo.png" alt="Steam"></a></h1>
	
	<div id="small-nav">
		<a href="index.php" title="Home" style="margin-right: 12px;">
			<svg width="35" height="35" viewBox="0 0 150 150" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M138.647 73.9745L78.3105 13.6815C77.8761 13.2462 77.3601 12.9009 76.792 12.6653C76.224 12.4296 75.615 12.3083 75 12.3083C74.385 12.3083 73.776 12.4296 73.208 12.6653C72.6399 12.9009 72.1239 13.2462 71.6895 13.6815L11.3525 73.9745C9.59473 75.7323 8.59863 78.12 8.59863 80.6102C8.59863 85.7811 12.8027 89.9852 17.9736 89.9852H24.3311V133.008C24.3311 135.6 26.4258 137.695 29.0186 137.695H65.625V104.883H82.0312V137.695H120.981C123.574 137.695 125.669 135.6 125.669 133.008V89.9852H132.026C134.517 89.9852 136.904 89.0038 138.662 87.2313C142.31 83.5692 142.31 77.6366 138.647 73.9745V73.9745Z" fill="white"/>
			</svg>
		</a>

		<a href="admin.php" title="Login">
			<svg width="35" height="35" viewBox="0 0 150 150" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path d="M75 37.5C70.3645 37.5 65.8331 38.8746 61.9788 41.4499C58.1246 44.0253 55.1205 47.6857 53.3466 51.9684C51.5727 56.251 51.1085 60.9635 52.0129 65.5099C52.9172 70.0564 55.1494 74.2325 58.4272 77.5103C61.705 80.7881 65.8812 83.0203 70.4276 83.9247C74.974 84.829 79.6865 84.3649 83.9692 82.5909C88.2518 80.817 91.9122 77.813 94.4876 73.9587C97.0629 70.1044 98.4375 65.573 98.4375 60.9375C98.4375 54.7215 95.9682 48.7601 91.5728 44.3647C87.1774 39.9693 81.216 37.5 75 37.5Z" fill="white"/>
			<path d="M75 9.375C62.0206 9.375 49.3327 13.2238 38.5407 20.4348C27.7488 27.6458 19.3374 37.895 14.3704 49.8864C9.40343 61.8778 8.10384 75.0728 10.636 87.8028C13.1682 100.533 19.4183 112.226 28.5961 121.404C37.774 130.582 49.4672 136.832 62.1972 139.364C74.9272 141.896 88.1222 140.597 100.114 135.63C112.105 130.663 122.354 122.251 129.565 111.459C136.776 100.667 140.625 87.9794 140.625 75C140.605 57.6013 133.685 40.9208 121.382 28.618C109.079 16.3153 92.3988 9.39485 75 9.375V9.375ZM112.463 116.841C112.369 110.692 109.864 104.827 105.487 100.507C101.11 96.1884 95.2117 93.7616 89.0625 93.75H60.9375C54.7884 93.7616 48.8899 96.1884 44.5129 100.507C40.136 104.827 37.6309 110.692 37.5375 116.841C29.037 109.25 23.0425 99.2572 20.3477 88.1844C17.6529 77.1115 18.3849 65.4813 22.4468 54.8337C26.5087 44.1861 33.7089 35.0234 43.094 28.5589C52.479 22.0944 63.6063 18.6329 75.0024 18.6329C86.3984 18.6329 97.5257 22.0944 106.911 28.5589C116.296 35.0234 123.496 44.1861 127.558 54.8337C131.62 65.4813 132.352 77.1115 129.657 88.1844C126.962 99.2572 120.968 109.25 112.467 116.841H112.463Z" fill="white"/>
			</svg>
		</a>
	</div>

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
		echo "<a href=\"admin.php?logout=1\">LOGOUT</a>";
		echo "<div id=\"menu\">\n";
		foreach($data_pages as $url=>$title){
			if($url==$page){ $selected="selected"; }else{ $selected=""; }
			echo "<a class=\"menu-item $selected\" href=\"admin.php?page=$url\">$title</a>\n";
		}
		echo "</div>\n";
		?>

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
				$sql="SELECT * FROM games WHERE game_id=$id";
				$result = mysqli_query($conn, $sql);
				$row=mysqli_fetch_array($result);
			} else {
				$row['title']=$row['url_name']=$row['image']=$row['website']=$row['trailer']=$row['description']='';
			}	
			$row['title']=stripslashes($row['title']);
			$row['description']=stripslashes($row['description']);
			
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
			echo "<tr><td class=\"t-right\">Trailer</td><td><input class=\"input-text\" type=\"text\" id=\"trailer\" name=\"trailer\" value=\"$row[trailer]\" /></td></tr>\n\n";
			echo "<tr><td class=\"t-right\">Description</td><td><textarea class=\"textarea\" id=\"description\" name=\"description\">$row[description]</textarea></td></tr>\n\n";
			echo "<tr><td class=\"t-right\">&nbsp;</td><td><input class=\"button\" type=\"submit\" value=\"Submit\" /></td></tr>\n\n";
			echo "</table>\n\n";
			echo "</form>\n\n";
		}else{
			// LIST ALL GAMES
			$sql="SELECT * FROM games";
			$result = mysqli_query($conn, $sql);
			echo "<table class=\"form-table\">\n\n";
			while ($row=mysqli_fetch_array($result)) {
			$row['title']=stripslashes($row['title']);

				echo "<tr style='background-image: linear-gradient(180deg, rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url(\"./images/games/thumbs/$row[image]\"); background-size: cover; background-repeat: no-repeat; background-position: center center; width: 200px; height:120px; margin:10px; border-radius: 10px;'>\n<td class=\"t-right\"><b><a href=\"admin.php?page=edit&id=$row[game_id]\">$row[title]</a></b></td>\n<td><a href=\"admin.php?page=list&delete_id=$row[game_id]\" title=\"DELETE\" onclick=\"return confirm_delete(this);\">X</a></td>\n</tr>\n\n";
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