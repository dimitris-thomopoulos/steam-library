<?php
function print_menu($data_categories,$category){
	$return = "";
	$return .= "<div id=\"menu\">\n";
	foreach($data_categories as $url=>$title){
		if($url==$category){ $selected="selected"; }else{ $selected=""; }
		$return .= "<a class=\"menu-item $selected\" href=\"index.php?category=$url\">$title</a>\n\n";
	}
	$return .= "</div>\n";
	return $return;
}
?>