<?php /* Smarty version Smarty3-b7, created on 2017-06-01 10:28:55
         compiled from "C:/wamp/www/iap/templates/new/add-modules-course.tpl" */ ?>
<?php /*%%SmartyHeaderCode:28162593032b7caf931-27136275%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '52dde4234d50e570f9fdabd1d626fc5154231f5a' => 
    array (
      0 => 'C:/wamp/www/iap/templates/new/add-modules-course.tpl',
      1 => 1496156724,
    ),
  ),
  'nocache_hash' => '28162593032b7caf931-27136275',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div class="portlet box red">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-bullhorm"></i>Modulos del Curso
        </div>
        <div class="actions">
        </div>
    </div>
    <div class="portlet-body">
        <?php if ($_smarty_tpl->getVariable('noModules')->value==1){?>
            <div style="text-align:center">No hay mas modulos para agregar.</div>
        <?php }else{ ?>
            <?php $_template = new Smarty_Internal_Template("{$_smarty_tpl->getVariable('DOC_ROOT')->value}/templates/forms/new/add-modules-course.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>

        <?php }?>
    </div>
</div>