<script type="text/javascript" charset="utf-8">
    $(document).observe('dom:loaded', function() {ldelim}
        {foreach from=$students item=item key=key}
        new FancyZoom('foto-{$item.userId}', {ldelim}width:400, height:300{rdelim});
        {/foreach}
        {rdelim});
</script>
</head>
<body>

<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-bullhorm"></i>Usuarios
        </div>


        
            {include file="boxes/status_no_ajax.tpl"}
           <div class="accions">
           <!-- <table>
                <tr>
                    <td>
						<a class="btn green" href="{$WEB_ROOT}/graybox.php?page=add-alumno-admin&id={$item.userId}" data-target="#ajax" data-toggle="modal" data-width="1000px">
                            <i class="fa fa-plus"></i> Agregar
                        </a>
                    </td>
                    <td>
                        <form method="post" name="frmReport" id="frmReport" action="">
                            <input type="hidden" name="accion" value="export" />
                            <input type="image" src="images/excel.gif"  title="Exportar alumnos a Excel" alt="Exportar alumnos a Excel">
                        </form>
                    </td>
                </tr>
            </table>-->
			</div>
      
    </div>
	
	 
    <div class="portlet-body">
	<form id="frmBuscar">
	Certificaciones
	 <select name="certificacionId" class="form-control" style="width:100px">
		<option></option>
		{foreach from=$lstCertificaciones item=item key=key}
		<option value="{$item.subjectId}">{$item.name}</option>
		{/foreach}
	 </select>
	 Evaluador
	 <select class="form-control" style="width:100px" name="evaluado">
		<option value="">Todos</option>
		<option>si</option>
		<option>no</option>
	 </select>
	 </form>
	   <button type="submit" class="btn green submitForm" onClick="buscarCertificacion()">Buscar</button>
        <div id="tblContent">{include file="lists/usuarios.tpl"}</div>

    </div>
        
            


        <div id="loader2" > </div>
</div>
