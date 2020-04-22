<?php
	if($_SESSION["User"]["type"] == "student")
        exit;

	if($_POST)
	{
		$group_activity->setCourseId($_GET["id"]);
		$group_activity->setActivityType($_POST["activityType"]);
		$group_activity->setInitialDate($_POST["initialDate"]);
		$group_activity->setFinalDate($_POST["finalDate"]);
		$group_activity->setHora($_POST["hora"]);
		$group_activity->setModality("Individual");
		$group_activity->setResumen($_POST["resumen"]);
		$group_activity->setDescription($_POST["description"]);
		$group_activity->setRequiredActivity(0);
		$group_activity->setPonderation($_POST["ponderation"]);
		$group_activity->setHoraInicial($_POST["horaInicial"]);
		$group_activity->Save();
		
		if($_POST["auxTpl"] == "admin"){
			header("Location:".WEB_ROOT."/edit-modules-group/id/".$_POST["id"]."");
			exit;
		}
	}

	$date = date("d-m-Y");
	$smarty->assign('date', $date);
	$smarty->assign('id', $_GET["id"]);

	/* $group_activity->setCourseId($_GET["id"]);
	$actividades = $group_activity->Enumerate();
	$smarty->assign('actividades', $actividades); */
	

?>