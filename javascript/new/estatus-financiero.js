
function verCalendario(){
	url=WEB_ROOT+"/ajax/pagos.php?"+$('#frmfiltro').serialize(true);
	open(url,"voucher","toolbal=0,width=800,resizable=1");
}


function solicitarReferencia(id){

$.ajax({
	  	type: "POST",
	  	url: WEB_ROOT+'/ajax/homepage.php',
	  	data: "type=solicitarReferencia&id="+id,
		beforeSend: function(){			
			// $("#td_"+id).html(LOADER3);
			$("#load").html(LOADER3);
		},
	  	success: function(response) {	
			console.log(response)
			var splitResponse = response.split("[#]");
			if($.trim(splitResponse[0]) == "ok"){
				href.location = DOC_ROOT+"/homepage";
			}else if ($.trim(splitResponse[0]) == "ok"){
				$("#msj5").html(splitResponse[2]);
			}
			  

		},
		error:function(){
			alert(msgError);
		}
    });


}