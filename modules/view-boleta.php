<?php
		
	/* For Session Control - Don't remove this */
	// $user->allow_access(37);	
	
	// echo "<pre>"; print_r($_POST);
	// exit;


	$finishedCourses = $student->StudentCourses("finalizado");
	
	// echo '<pre>'; print_r($finishedCourses);
	// exit;
	$smarty->assign("finishedCourses", $finishedCourses);	
	

?>