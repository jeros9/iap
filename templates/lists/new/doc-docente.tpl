<table width="100%" class="tblGral table table-bordered table-striped table-condensed flip-content">
	<thead>
    	<tr>
			<th width="">Documento</th>	 
			<th width=""></th>		 
		</tr>
    </thead>
    <tbody>
    	{foreach from=$registros item=subject}
		<tr>
		   
			<td align="center">{$subject.nombre}</td>
		  
			<td align="center">
				<a  href="{$WEB_ROOT}/graybox.php?page=add-docdocente&id={$subject.catalogodocumentoId}" data-target="#ajax" data-toggle="modal" data-width="1000px" title='ENVIAR COMPROBANTE DE PAGO'>
				<i class="fa fa-cloud-upload" aria-hidden="true"></i>
				</a>
				{if $subject.existArchivo eq 'si'}
					<a  href="{$WEB_ROOT}/docentes/documentos/{$subject.ruta}"  title='DESCARGAR DOCUMENTO' target='_blank'>
					<i class="fa fa-cloud-download" aria-hidden="true"></i>
					</a>
				{/if}
			</td>
		 </tr>
		 {/foreach}
	</tbody>
</table>