<?php /* Smarty version Smarty3-b7, created on 2015-11-05 13:35:33
         compiled from "/home/iapchiap/public_html//templates/boxes/add-personal-popup.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1007931912563baf850b7631-42646049%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fa5b82dfa8f1d5447bf54c73ab8c947395df6b30' => 
    array (
      0 => '/home/iapchiap/public_html//templates/boxes/add-personal-popup.tpl',
      1 => 1379524978,
    ),
  ),
  'nocache_hash' => '1007931912563baf850b7631-42646049',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div class="popupheader" style="z-index:70">
      
      <div class="ftitl">
        <div class="dgBox" id="draganddrop">
            <div style="float:left;"><img src="<?php echo $_smarty_tpl->getVariable('WEB_ROOT')->value;?>
/images/icons/addPopup.png" /></div>
            <div class="flabel" style="float:left">&nbsp;&nbsp;Agregar Personal</div>
        </div>
            <div class="closePopup" id="closePopUpDiv">
            <a href="javascript:void(0)" title="Cerrar"><img src="<?php echo $_smarty_tpl->getVariable('WEB_ROOT')->value;?>
/images/new/close.png" /></a>
            </div>				
       </div>
               
     <?php $_template = new Smarty_Internal_Template("{$_smarty_tpl->getVariable('DOC_ROOT')->value}/templates/forms/add-personal.tpl", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
                      
         
</div>