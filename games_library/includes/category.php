<div>
<?php
if(isset($_GET['game'])){
	echo "<ul class=\"submenu\">\n";
	$result = mysqli_query($conn, "SELECT * FROM games WHERE category='$category'");
	while($row=mysqli_fetch_array($result)){
	$row['title']=stripslashes($row['title']);
		if($row['url_name']==$game){
			echo "<li class=\"submenu-item\"><b>$row[title]</b></li>\n";
		}else{
			echo "<li class=\"submenu-item\"><a href=\"index.php?category=$category&amp;game=$row[url_name]\">$row[title]</a></li>\n";
		}
	}
	echo "</ul>\n";
	
	//GAME DETAILS
	$result = mysqli_query($conn, "SELECT * FROM games WHERE url_name='$game'");
	$row=mysqli_fetch_array($result);
	$title = stripslashes($row['title']);
	$image = $row['image'];
	$bio = nl2br(stripslashes($row['bio']));
	$video = $row['video'];
	$website = $row['website'];
	echo "<h2>$title</h2>\n";
	if($image!=""){echo "<img class=\"image-right\" src=\"images/games/$image\" alt=\"$title\" />\n"; }
	echo "<div class=\"t-justify\">$bio</div><br /><br />\n";
	if($video!=""){ echo "<iframe width=\"420\" height=\"315\" src=\"//www.youtube.com/embed/$video\"></iframe>\n"; }
	if($website!=""){ echo "<div class=\"website\">Official Website: <a target=\"_blank\" href=\"$website\">$website</a></div>\n"; }
	echo "<hr />\n";
	echo "<h3>Comments</h3>\n";
	include("comments.php");
}else{
	echo "<h3 style=\"text-align: center;\">$game_categories[$category] Games</h3>\n";
	echo "<table class=\"games-table\">\n<tr>\n";
	$result = mysqli_query($conn, "SELECT * FROM games WHERE category='$category'");
	while($row=mysqli_fetch_array($result)){
	$row['title']=stripslashes($row['title']);
		echo "<td><a href=\"index.php?category=$category&amp;game=$row[url_name]\"><img src=\"images/games/thumbs/$row[image]\" alt=\"$row[title]\"/><br />$row[title]</a></td>\n";
	}
	echo "</tr>\n</table>\n";
}
?>
</div>