<ul id="sort-box" class="sorts">
 <li>
    <div class="content-header">
        <div class="content-header-left-wide">
          <img src="{$WEB_ROOT}/images/new/catalogos.png" alt="" />
            <h2>INFORMACI&Oacute;N {$myModule.name|truncate:35:"..."} {if $vistaPrevia==0}&raquo; <a href="{$WEB_ROOT}/curricula" style="color:#000">Regresar</a>{/if}</h2>
        </div>                  
    </div>
        {include file="boxes/status_no_ajax.tpl"}                                     
      	{include file="{$DOC_ROOT}/templates/boxes/module-information.tpl"}
                         
   </li>                                                              
 </ul>

