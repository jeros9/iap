<script language="JavaScript">
var nav4 = window.Event ? true : false;
function habilitar() {
       if(editSubjectForm.tipo_beca.value=="Ninguno")
    editSubjectForm.por_beca.disabled = true;
	else
	editSubjectForm.por_beca.disabled = false;
	
	
	
}

function IsNumber(evt){
// Backspace = 8, Enter = 13, ’0′ = 48, ’9′ = 57, ‘.’ = 46
var key = nav4 ? evt.which : evt.keyCode;
return (key <= 13 || (key >= 48 && key <= 57) || key == 46);
}
</script>

<form id="editSubjectForm" name="editSubjectForm" method="post">
<input type="hidden" id="userId" name="userId" value="{$id}"/>
<ul id="sort-box" class="sorts">
  <li>              
    <div class="content-in-popup">
      
      <div class="content-settings-row">
            <label for="f1"><span class="reqField">*</span> Selecciona Curricula:</label>
            <select name="courseId" id="courseId" style="width:350px">
            {foreach from=$curricula item=curso}
  	          <option value="{$curso.courseId}">{$curso.majorName} - {$curso.name}-{$curso.courseId}</option>
            {/foreach}  
            </select>
      </div>
	{if $positionId==1}	  
	   <div class="content-settings-row">
            <label for="f1">Tipo de beca:</label>
            	<select name='tipo_beca' id="tipo_beca" style="width:350px"  onChange='habilitar()'>
                    <option value="Ninguno">Ninguno</option>
                    <option value="Particular">Particular</option>
                    <option value="Escolar">Escolar</option>
					<option value="Prodim">PRODIM</option>
					
     </select>                    
      </div>
  
	  <div class="content-settings-row">
       <label for="f1">Porcentaje de beca :</label>
      <input type="text" name="por_beca" id="por_beca" value="0" disabled  onkeypress="return IsNumber(event);" style="width:330px"/>% 
	  
      </div>
	  {/if}
	          
	  

      <div style="float:left"><span class="reqField">*</span> Campo requerido</div>
      <div style="padding-right:60px">                 
      <input type="submit" class="btn-70-l" id="saveEditSubject" name="saveEditSubject" value="." />                  
      </div>
      
    </div>
   </li>                              
 </ul>    
</form>