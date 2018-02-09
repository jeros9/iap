<?php
// echo '<pre>'; print_r($_POST);
// exit;
	include_once('../init.php');
	include_once('../config.php');
	include_once(DOC_ROOT.'/libraries.php');

	session_start();

	switch($_POST["type"])
	{
	
	
      case 1:
			// echo '<pre>'; print_r($_POST);
			// exit;
			$personal->setPersonalId($_POST['personalId']);
			$personal->setIne($_POST['ine']);
			$personal->setCalle($_POST['calle']);
			$personal->setNExterior($_POST['exterior']);
			$personal->setNInterior($_POST['interior']);
			$personal->setColonia($_POST['colonia']);
			$personal->setCelular($_POST['celular']);
			$personal->setEstado($_POST['estado']);
			$personal->setCiudad($_POST['ciudad']);
			$personal->setCorreo($_POST['correo']);
			$personal->setName($_POST['nombre']);
			$personal->setLastnamePaterno($_POST['paterno']);
			$personal->setLastnameMaterno($_POST['materno']);
			$personal->setCurp($_POST['curp']);
			$personal->setRfc($_POST['rfc']);
			$personal->setFechaNacimiento($_POST['nacimiento']);
			if($personal->updateDocente()){
				echo 'ok[#]';
				echo '
				<div class="alert alert-info alert-dismissable">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>La Informacion se actualizo correctamente</strong>
				</div>
				';
			}else{
				echo 'fail[#]';
			}
	  break; 
		
		
	  case 2:
		 // echo '<pre>'; print_r($_POST);
		// exit;
		$personal->setPersonalId($_POST['personalId']);
		if($personal->updateInfoEscolar()){
				echo 'ok[#]';
				echo '
				<div class="alert alert-info alert-dismissable">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>La Informacion se actualizo correctamente</strong>
				</div>
				';
			}else{
				echo 'fail[#]';
			}
		
	  break;
	  
	  case 3:
	  
		// echo '<pre>'; print_r($_POST);
		$personal->setPersonalId($_POST['personalId']);
		if($personal->updateInfoBancos()){
				echo 'ok[#]';
				echo '
				<div class="alert alert-info alert-dismissable">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>La Informacion se actualizo correctamente</strong>
				</div>
				';
			}else{
				echo 'fail[#]';
			}
	  
	  break;
	  
	  case 4:
	  
		// echo '<pre>'; print_r($_POST);
		$personal->setPersonalId($_POST['personalId']);
		if($personal->updateInfoAutomovil()){
				echo 'ok[#]';
				echo '
				<div class="alert alert-info alert-dismissable">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>La Informacion se actualizo correctamente</strong>
				</div>
				';
			}else{
				echo 'fail[#]';
			}
			
	  break;
	  
	  
	  case 'onDelete':
	  
	  
		// echo '<pre>'; print_r($_POST);
		$personal->setPersonalId($_POST['personalId']);
		if($personal->onDeleteDocumento($_POST['Id'])){
				echo 'ok[#]';
				echo '
				<div class="alert alert-info alert-dismissable">
				  <button type="button" class="close" data-dismiss="alert">&times;</button>
				  <strong>El Documento se ha eliminado correctamente</strong>
				</div>
				';
				echo '[#]';
				$personal->setPersonalId($_POST["personalId"]);
				$registros = $personal->enumerateCatProductos();
				// $smarty->assign("cId", $_POST['cId']);
				$smarty->assign("personalId", $_POST['personalId']);
				$smarty->assign("registros", $registros);
				$smarty->assign("DOC_ROOT", DOC_ROOT);
				$smarty->display(DOC_ROOT.'/templates/lists/new/doc-docente.tpl');
			}else{
				echo 'fail[#]';
			}
	  
	  break;
	
	
	}

?>


