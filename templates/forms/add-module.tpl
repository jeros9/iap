<!-- TinyMCE -->
<script type="text/javascript" src="{$WEB_ROOT}/tinymce/tiny_mce.js"></script>
<script type="text/javascript">
	tinyMCE.init({
		mode : "textareas",
		theme : "advanced",
		skin : "o2k7"		
		
	});
</script>
<!-- /TinyMCE -->

<form id="addSubjectForm" name="addSubjectForm" method="post">
<input type="hidden" name="subjectId" id="subjectId" value="{$id}" />
<ul id="sort-box" class="sorts">
  <li>              
    <div class="content-in-popup">
      
      <div class="content-settings-row-register">
            <label for="f1"><span class="reqField">*</span> Nombre:</label>
            <input type="text" name="frmName" id="frmName" value="" />                      
      </div>
      
      <div class="content-settings-row-register">
            <label for="f1"><span class="reqField"></span> Clave:</label>
            <input type="text" name="frmClave" id="frmClave" value="" />                      
      </div>

      <div class="content-settings-row-register">
            <label for="f1"><span class="reqField"></span> Perteneciente al Cuatrimestre Numero?:</label>
            <input type="text" name="semesterId" id="semesterId" value="1" maxlength="2"/>                      
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Texto de Bienvenida:</label>
     				<textarea id="welcomeText" name="welcomeText" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Introduccion:</label>
     				<textarea id="introduction" name="introduction" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Intenciones:</label>
     				<textarea id="intentions" name="intentions" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Objetivos:</label>
     				<textarea id="objectives" name="objectives" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Temario:</label>
     				<textarea id="themes" name="themes" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Esquema:</label>
     				<textarea id="scheme" name="scheme" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Metodologia:</label>
     				<textarea id="methodology" name="methodology" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Politicas:</label>
     				<textarea id="politics" name="politics" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Evaluacion:</label>
     				<textarea id="evaluation" name="evaluation" rows="15" cols="80" style="width: 50%"></textarea>
      </div>

      <div class="content-settings-row-register">
            <label for="f1">Bibliografia:</label>
     				<textarea id="bibliography" name="bibliography" rows="15" cols="80" style="width: 50%"></textarea>
      </div>
      
      <div style="float:left"><span class="reqField">*</span> Campo requerido</div>
      <div style="padding-right:60px">                 
      <input type="submit" class="btn-70-l" id="saveAddSubject" name="saveAddSubject" value="." />                  
      </div>
      
    </div>
   </li>                              
 </ul>    
</form>