<br/>
<br/>

<div id="home-list">
	<?php
	$result = mysqli_query($conn,"SELECT * FROM games");
	while($row=mysqli_fetch_array($result)){
		$row['title']=stripslashes($row['title']);
		echo "<a href=\"index.php?category=$row[category]&amp;game=$row[url_name]\" title=\"$row[title]\"><img src=\"images/games/thumbs/$row[image]\" alt=\"$row[title]\" class=\"image-thumb\" /></a>\n\n";
	}
	?>
</div>