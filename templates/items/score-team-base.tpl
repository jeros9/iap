{foreach from=$theGroup item=item key=key}
        <tr id="1">
        <td align="center">{$item.teamId}</td>
        <td align="center">{$item.teamNumber}</td>
        <td align="center">
        {if $item.homework}
        	<a href="{$WEB_ROOT}/download.php?file=homework/{$item.homework.path}">{$item.homework.nombre}</a>
        {else}
        	Sin Entregar
        {/if}
        </td>
        <td align="center">
            <input type="text" maxlength="5" size="5" name="ponderation[{$item.teamNumber}]" name="ponderation[{$item.teamNumber}]" value="{$item.ponderation}" />
        </td>
        <td align="center">
            <input type="text" name="retro[{$item.teamNumber}]" name="ponderation[{$retro.teamNumber}]" value="{$item.retro}" />
        </td>

    </tr>
{foreachelse}
	<tr><td colspan="4" align="center">No se encontr&oacute; ning&uacute;n registro.</td></tr>
{/foreach}

        <tr>
        <td colspan="4" align="center">
            <input type="submit" name="Enviar" name="Enviar" value="Actualizar Calificaciones" />
        </td>
    </tr>
