<?php
// echo "<pre>"; print_r($_FILES);
// echo "<pre>"; print_r($_POST);
// exit;
include_once('../init.php');
include_once('../config.php');
include_once(DOC_ROOT.'/libraries.php');

session_start();

session_start();

switch($_POST["type"])
	{
		case 'SaveCalificacion':
		
			$group->setCourseModuleId($_POST["id"]);
			if($group->EditCalificacion()){
				echo "ok[#]";
				echo '<div class="alert alert-info alert-dismissable">
					  <button type="button" class="close" data-dismiss="alert">&times;</button>
					  Las Calificaciones se guardaron exitosamente
					</div>';
			}else{
				echo "fail[#]";
			}
			
		break;

		case "validarCal":
		
			$group->setCourseModuleId($_POST["id"]);
			if($group->validarCalificacion()){
				echo "ok[#]";
				echo '<div class="alert alert-info alert-dismissable">
					  <button type="button" class="close" data-dismiss="alert">&times;</button>
					  Las Calificaciones se han validado exitosamente
					</div>';
			}else{
				echo "fail[#]";
			}
		
		break;
		
		
		case "habilitarEdicion":
		
			$group->setCourseModuleId($_POST["id"]);
			if($group->habilitarEdicion()){
				echo "ok[#]";
				echo '<div class="alert alert-info alert-dismissable">
					  <button type="button" class="close" data-dismiss="alert">&times;</button>
					  La edicion del acta de calificaciones se ha habilitado
					</div>';
			}else{
				echo "fail[#]";
			}
		
		break;
		
		case "upFile":
		
		// echo '<pre>'; print_r($_FILES);
		// exit;
			if($url = $group->upFile($_POST["id"])){
				echo "ok[#]";
			}else{
				echo "fail[#]";
				
			}
		
		break;
		
		case "reloadActa":
		
			$user->setUserId($_SESSION['User']['userId']);
			$infoUser = $user->Info();

			$module->setCourseModuleId($_POST["id"]);
			$info = $module->InfoCourseModule();

			$group->setCourseModuleId($_POST["id"]);
			$group->setCourseId($info["courseId"]);
			$noTeam = $group->actaCalificacion();
			
			$numberTeams = $group->GetNumberOfTeams();
			
			$teams = $group->Teams();
			
			$smarty->assign('numberTeams', $numberTeams);
			$smarty->assign('id', $_POST["id"]);
			$smarty->assign('info', $info);
			$smarty->assign('infoUser', $infoUser);
			$smarty->assign('teams', $teams);
			$smarty->assign('noTeam', $noTeam);
			
			$smarty->display(DOC_ROOT.'/templates/lists/add-calificacion.tpl');
		
		break;
		
		case "onSaveCarta":
		
			// echo '<pre>'; print_r($_POST);
			// $group->setCourseModuleId($_POST["id"]);
			$group->setPerfilParticipante($_POST["perfilParticipante"]);
			$group->setDuracion($_POST["duracion"]);
			$group->setnumParticipantes($_POST["numParticipante"]);
			$group->setHorario($_POST["horario"]);
			$group->setobjetivoParticular($_POST["objetivoParticular"]);
			$group->setestructuraTematica($_POST["tematica"]);
			$group->setcriteriosEvaluacion($_POST["criterioEvaluacion"]);
			$group->settecnicas($_POST["tecnicasInstruccionales"]);
			$group->setbibliografias($_POST["bibliografia"]);
			if($group->onSaveCarta($_POST['mId'])){
				echo "ok[#]";
				echo '<div class="alert alert-info alert-dismissable">
					  <button type="button" class="close" data-dismiss="alert">&times;</button>
					  Los datos se guardaron correctamente
					</div>';
			}else{
				echo "fail[#]";
			}
		
		break;
		
		case 'onSendCarta':
		
			// echo '<pre>'; print_r($_FILES);
			// echo '<pre>'; print_r($_POST);
			// exit;
			if($url = $group->onSendCarta($_POST["id"])){
				echo "ok[#]";
				echo '<div class="alert alert-info alert-dismissable">
					  <button type="button" class="close" data-dismiss="alert">&times;</button>
					  El archivo se adjunto correctamente
					</div>';
				exit;
			}else{
				echo "fail[#]";
				
			}
		
		break;
		
		case 'onDeleteCarta':
		
			// echo '<pre>'; print_r($_POST);
			if($url = $personal->onDeleteCarta($_POST["id"])){
				echo "ok[#]";
			}else{
				echo "fail[#]";
				
			}
		
		break;
	}

?>
