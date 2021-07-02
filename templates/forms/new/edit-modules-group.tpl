<div id="msjCourse"></div>
<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i> .:: Datos del Grupo ::.
        </div>
        <div class="actions">
            <a href="{$WEB_ROOT}/graybox.php?page=add-group-inform&id={$infoCourse.courseId}&auxTpl=admin&cId={$infoCourse.courseId}" data-target="#ajax" data-toggle="modal" class="btn btn-circle blue">
                &raquo; Agregar Informe del Curso
            </a>
        </div>
    </div>
    <div class="portlet-body">
		<div id="msj"></div>
        <div class="row">
            <div class="col-md-12">
                <label class="col-md-3 control-label">Perteneciente al (a la) {$infoCourse.majorName}:</label>
                <div class="col-md-8">
                    <b>{$infoCourse.name}</b>
                </div>
            </div>
            <div class="col-md-12">
                <label class="col-md-3 control-label">Nombre del Grupo:</label>
                <div class="col-md-8">
                    <b>{$infoCourse.group}</b>
                </div>
            </div>
            <div class="col-md-12 text-center">
                <a href="{$WEB_ROOT}/candidatos/id/{$infoCourse.courseId}" target="_blank" data-toggle="modal" class="btn green">
                    &raquo; Ver Candidatos y Calificaciones
                </a>
                <a href="{$WEB_ROOT}/foro/id/{$infoCourse.courseId}" target="_blank" data-toggle="modal" class="btn blue">
                    &raquo; Ver Foro
                </a>
            </div>
        </div>
    </div>
</div>

{* ACTIVIDADES *}
<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>.:: Actividades ::.
        </div>
        <div class="actions">
            <a href="{$WEB_ROOT}/graybox.php?page=add-group-activity&id={$infoCourse.courseId}&auxTpl=admin" data-target="#ajax" data-toggle="modal" class="btn btn-circle blue">
                &raquo; Agregar actividad
            </a>
        </div>
    </div>
    <div class="portlet-body">
        <div style="text-align:left">Ponderaci&oacute;n Total del Grupo: <b>{$totalPonderation}%</b>
            {if $totalPonderation < 100}
                <span style="color:#C00"> La suma de las ponderaciones de las actividades es menor a 100%. Se recomienda que sea 100%</span>
            {/if}
            {if $totalPonderation > 100}
                <span style="color:#C00"> La suma de las ponderaciones de las actividades es mayor a 100%. Se recomienda que sea 100%</span>
            {/if}
        </div>
        <div id="tblContent-activities">{include file="lists/new/group-activities.tpl"}</div>
    </div>
</div>

{* RECURSOS DE APOYO *}
<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>.:: Recursos de Apoyo ::.
        </div>
        <div class="actions">
            <a href="{$WEB_ROOT}/graybox.php?page=add-group-resource&id={$infoCourse.courseId}&auxTpl=admin&cId={$infoCourse.courseId}" data-target="#ajax" data-toggle="modal" class="btn btn-circle blue">
                &raquo; Agregar Recurso de Apoyo
            </a>
        </div>
    </div>
    <div class="portlet-body">
        <div id="tblContentResources">{include file="lists/new/group_resources.tpl"}</div>
    </div>
</div>

{* AVISOS *}
<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i> .:: Avisos ::.
        </div>
        <div class="actions">
            <a href="{$WEB_ROOT}/graybox.php?page=add-group-noticia&id={$infoCourse.courseId}&auxTpl=admin" data-target="#ajax" data-toggle="modal"  class="btn btn-circle blue">
                &raquo; Agregar Aviso
            </a>
        </div>
    </div>
    <div class="portlet-body">
        <div id="tblContentNoticias">{include file="lists/new/module-group-announcements.tpl"}</div>
    </div>
</div>


