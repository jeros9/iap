<form id="addGradereportForm" name="addGradereportForm" method="post">
<input type="hidden" id="type" name="type" value="saveAddGradereport"/>
<input type="hidden" id="gradereportId" name="gradereportId" value="{$post.gradereportId}"/>
<ul id="sort-box" class="sorts">
  <li>              
    <div class="content-in-popup">
      
      <div class="content-settings-row">
            <label for="f1"><span class="reqField">*</span> Periodo:</label>
            <select id="selPeriodo" name="selPeriodo">
				{html_options values=$optPeriodosIds output=$optPeriodosOut selected=$optPeriodosSel}
			</select>                   
      </div>
      
      <div class="content-settings-row">
            <label for="f1"><span class="reqField">*</span> Semestre:</label>
            <select id="selSemestre" name="selSemestre">
				{html_options values=$optSemestersIds output=$optSemestersOut selected=$optSemestersSel}
			</select>                     
      </div>
      
      <div class="content-settings-row">
            <label for="f1"><span class="reqField">*</span> Grupo:</label>
            	<span id="updateDataGroup">
					<select name="groupId" id="groupId">
						{html_options values=$optGruposIds output=$optGruposOut selected=$optGruposSel}
					</select>
				</span>                      
      </div>
      
      <div class="content-settings-row">
            <label for="f1"><span class="reqField">*</span> Es Regularizaci&oacute;n:</label>
            	<select name="regularization" id="regularization">
					<option value="S" selected="selected">SI</option>
					<option value="N">NO</option>
				</select>                   
      </div>
      
      <div class="content-settings-row">
            <label for="f1"><span class="reqField">*</span> Generaci&oacute;n:</label>
            <input type="text" name="generation" id="generation" value="{$valGeneration}" />                      
      </div>
      
      <div style="float:left"><span class="reqField">*</span> Campo requerido</div>
      <div style="padding-right:60px">                 
      <input type="button" class="btnCancel" style="margin-left:10px;" id="btnCancel" />
      <input type="button" class="btn-70-l" id="addGradereport" name="addGradereport" />                  
      </div>
      
    </div>
   </li>                              
 </ul>    
</form>