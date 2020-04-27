<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-bullhorm"></i><b>{$titulo}</b> {$myModule.name|truncate:65:"..."} &raquo;
        </div>
        <div class="actions"></div>
    </div>
	{if $infoUSubject.acuseDerecho eq "si"}
		<div class="portlet-body">
			{include file="boxes/status_no_ajax.tpl"}
			{**include file="{$DOC_ROOT}/templates/new/eval.tpl"**}
			
			{if $myModule.evalOk eq "si"}
				{if $tipo eq "resultado"}
					<div id="tblContent">{include file="{$DOC_ROOT}/templates/forms/make-test-resultado.tpl"}</div>
				{elseif $tipo eq "actividades"}
					<div id="tblContent">{include file="{$DOC_ROOT}/templates/new/view-group-activities.tpl"}</div>
				{elseif $tipo eq "recursos"}
					<div id="tblContent">{include file="{$DOC_ROOT}/templates/new/view-group-resources.tpl"}</div>
				{elseif $tipo eq "avisos"}
					<div id="tblContent">{include file="{$DOC_ROOT}/templates/new/view-group-announcements.tpl"}</div>
				{/if}
			{else}
				<div id="tblContent">{include file="{$DOC_ROOT}/templates/forms/make-test.tpl"}</div>
			{/if}
			
		</div>
	{else}
	  <div class="portlet-body">
        {include file="boxes/status_no_ajax.tpl"}
        {include file="{$DOC_ROOT}/templates/lists/new/acuse.tpl"}
    </div>
	{/if}
	
	
</div>