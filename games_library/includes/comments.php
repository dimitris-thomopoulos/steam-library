<?php
$game_url = $_GET['game'];
$result = mysqli_query($conn,"SELECT game_id FROM games WHERE url_name='$game_url'");
$row=mysqli_fetch_array($result);
$game_id = $row['game_id'];

if(isset($_POST['save_comment'])){
	$fullname = mysqli_real_escape_string($conn,strip_tags($_POST['fullname']));
	$email = mysqli_real_escape_string($conn,strip_tags($_POST['email']));
	$comments = mysqli_real_escape_string($conn,strip_tags($_POST['comments']));
	$created= date("Y-m-d H:i:s");
	mysqli_query($conn,"INSERT INTO comments SET game_id='$game_id',fullname='$fullname',email='$email',comments='$comments',created='$created'");
}
?>

<form id="comments-form" action="index.php?category=<?=$category?>&amp;game=<?=$game?>" method="post" onsubmit="return validate();">
<input type="hidden" name="save_comment" value="1" />

<table class="form-table">

<tr><td class="t-right">Fullname</td><td><input class="input-text" type="text" id="fullname" name="fullname" /></td></tr>

<tr><td class="t-right">Email</td><td><input class="input-text" type="text" id="email" name="email" /></td></tr>

<tr><td class="t-right">Comments</td><td><textarea class="textarea" id="comments" name="comments"></textarea></td></tr>

<tr><td class="t-right">&nbsp;</td><td><input class="button" type="submit" value="Submit" /></td></tr>

</table>

</form>

<hr />

<?php
$sql="SELECT * FROM comments WHERE game_id=$game_id";
$result = mysqli_query($conn,$sql);
while ($row=mysqli_fetch_array($result)) {
	echo "<table class=\"comments-table\"><tr><td>";
	echo "<b>$row[fullname]</b><br />";
	echo "$row[email]<br />";
	echo "<i class=\"small\">$row[created]</i>";
	echo "</td><td class=\"comments-left-cell\">";
	echo nl2br(stripslashes($row['comments']));
	echo "</td></tr></table>";
}
?>