<form  id='frmGral_3'>
<input type="hidden" name="personalId" class='form-control' value='{$info.personalId}'>
<div style='text-align:justify'>
Favor de completar todos los campos, si no cuenta con información en alguno de ellos colocar las siglas N/D, una vez completado todos los
campos se le habilitará el botón 'Descargar' para que pueda imprimir la 'Carta de Autorización de pago' y lo pueda firmar, este archivo 
deberá escanearlo y subirlo en la sección de 'DOCUMENOS DEL DOCENTE'.</div>
<br>
<br>
<b>Institución Bancaria</b>
<input type="text" name="banco" class='form-control' {if $cId eq 'si'} disabled {/if} value="{$infoBasic.infoBanco.0.nombreBanco}"><br> 
<b>No. Cuenta</b>
<input type="text" name="ncuenta" class='form-control' {if $cId eq 'si'} disabled  {/if} value="{$infoBasic.infoBanco.0.numCuenta}"><br>
<b>CLABE Interbancaria</b>
<input type="text" name="clabeInter" class='form-control' {if $cId eq 'si'} disabled {/if} value="{$infoBasic.infoBanco.0.claveInterbancaria}"><br>
<b>Sucursal</b>
<input type="text" name="sucursal" class='form-control' {if $cId eq 'si'} disabled {/if} value="{$infoBasic.infoBanco.0.sucursal}"><br>
<b>Numero de Plaza</b>
<input type="text" name="nplaza" class='form-control' {if $cId eq 'si'} disabled {/if} value="{$infoBasic.infoBanco.0.numeroPlaza}"><br>
<b>Lugar</b>
<input type="text" name="lugar" class='form-control' {if $cId eq 'si'} disabled {/if} value="{$infoBasic.infoBanco.0.lugar}"><br>
<b>Correo Electrónico para notificación de pago</b>
<input type="text" name="correoNoti" class='form-control' {if $cId eq 'si'} disabled {/if} value="{$infoBasic.infoBanco.0.correo}"><br>
</form>
<div id="msj_3">
</div>
{if $cId ne 'si'}

<center>
<button onClick='guardarInformacion(3)' class="btn green" >
Guardar
</button>
</center>
{else}
	<center>
	<button onClick='activaEdicion()' class="btn yellow" >
						Activar Edicion
	</button>
	</center>
{/if}
<center>
<div class="divControls" style="display:none">
	<button onClick='guardarInformacion(3)' class="btn green" >Guardar</button>
	<button onClick='guardarInformacion(3)' class="btn blue" >Imprimir</button>
</div>
</center>