<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-bullhorm"></i>Calificar Actividad
        </div>
        <div class="actions">
		    <a href="{$WEB_ROOT}/edit-modules-group/id/{$cId}" id="btnAddMajor" class="btn green" title="Editar Modulo" >Regresar a Modulo</a>
        </div>
    </div>
    <div class="portlet-body">
        {if $actividad.modality == "Individual"}
            <div id="tblContent">{include file="{$DOC_ROOT}/templates/lists/group-score.tpl"}</div>
        {else}
            <div id="tblContent">{include file="{$DOC_ROOT}/templates/lists/score-team.tpl"}</div>
        {/if}
    </div>
</div>