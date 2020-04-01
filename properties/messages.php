<?php

$message[1]["subject"] = "Bienvenido a la Entidad de Certificacion y Evaluacion del IAP Chiapas";
$message[1]["body"] = "
	Bienvenido a la Entidad de Certificacion y Evaluacion ECE213-15 del Instituto de Administracion Publica del Estado de Chiapas. Estamos muy agradecidos que nos hayas elegido.
	
	La Certificacion de tu eleccion es:
	<b>|course|</b>
	
	Para ingresar a nuestro sistema, favor de dirigirte al siguiente enlace:
	<a href=\"https://redconocer.iapchiapas.edu.mx\">https://redconocer.iapchiapas.edu.mx</a>
	
	Tu datos para ingresar son los siguientes:
	<b>Usuario:</b> |email|
	<b>Contrase&ntilde;a:</b>	|password|
	
	<b>¡Bienvenido!</b>

	";

$message[2]["subject"] = "Pago autorizado";
$message[2]["body"] = "
	El Instituto de Administración Pública del Estado de Chiapas, A. C., agradece tu pago y te informa que este ha sido autorizado. El acceso a:

	El(la) |major| <b>|course|</b>

Se encuentra activo por lo que ya puedes acceder a la currícula que hayas elegido.
	";


$message[3]["subject"] = "Prueba Correo";
$message[3]["body"] = "
					Estimado usuario,<br>
					De acuerdo a la evaluación realizada y al ser declarado competente, ya se encuentra disponible para su descarga el certificado digital del estándar: <b>|course|</b>  expedido por el Consejo Nacional de Normalización y Certificación de Competencias Laborales (CONOCER), con validez oficial de la SEP.<br><br>

					Para descargarlo, deberá ingresar a nuestro Sistema RED CONOCER <a href='https://redconocer.iapchiapas.edu.mx/login'>https://redconocer.iapchiapas.edu.mx/login</a> con su usuario y contraseña:<br><br>

					Usuario: <b>|username|</b> <br>
					Contraseña: <b>|password|</b> <br><br>

					Posterior a ello, debe seguir los siguientes pasos:<br>
					<ol>
						<li>Dar click sobre el botón 'Descargar' ubicado el la última columna de la tabla de certificaciones.</li>
						<li>Responder una pequeña encuesta de satisfacción</li>
					</ol><br>
					En la siguiente imagen puede observar la ubicación del botón de descarga.
					<center><img src='|screen|' width='70%' alt='' /></center>";
	
	
?>