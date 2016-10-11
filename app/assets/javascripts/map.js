jQuery(document).ready(function($) {
		//Form nested fields function
	  $('FORM').nestedFields();
	  
	  //Valor Razonable Table's math
	 	if ($("[id*=area]")) {
	 		debugger;
    var vtotal = $("[id*=vtotal]");
    var suma = 0;
    var comparative = parseFloat($("[id*=_unitario]")[0].value);
    var mayor = 0;
    var menor = 0;
    var valoruvr = $('#vuvr').val('243.2294');
    var uvr_float = parseFloat(valoruvr.val());
    var valueuvr = $('#vuvr').val();
    var current = 0 ;
    var current_porcentaje = 0;
    var length = $("[id*=_unitario]").length;
    var valor_total = 0;
    var currentvtotal;
    var area = $("[id*=area]");

    for (var i=0; i < ($("[id*=_unitario]")).length; i++) { 
   	  unitario = $("[id*=_unitario]");
      var times = parseInt($("[id*=_unitario]").length);
      var area = parseInt($("[id*=_area]").val());
      var unit = parseInt($("[id*=_unitario]").val());
      total = parseFloat($("[id*=_unitario]")[i].value) * parseFloat($("[id*=_area]")[i].value);
      var vtotal = $("[id*=vtotal]")[i];
      $(vtotal).append(total);
    }

    //Total value loop
    for (var i=0; i < length; ++i) {
    	debugger;
      current = parseFloat($("[id*=_unitario]")[i].value);
      suma =parseFloat($("[id*=vtotal]")[i].value) + suma;
    }
    
    //valor total function
    $.each($("[id*=vtotal]"), function(index,value) {
      valor_total +=parseFloat($(this).text());
      current_porcentaje =parseFloat(parseFloat($(this).text())/valor_total)*100;
    });
    $('#suma').text(valor_total);

    //Valor avaluo en UVR function
    var totaluvr= valor_total/valueuvr;
    var h = parseFloat(totaluvr.toFixed(3));
    $('#valueuvr').val(h);

    //Table Porcentaje function
    $.each($("[id*=vtotal]"), function(index,value) {
      current_porcentaje =parseFloat(parseFloat($(this).text())/valor_total)*100;
      current_porcentaje = current_porcentaje.toFixed(2);
      $(this).parent().next().find('#porcent').text(current_porcentaje);
    });  
  }
	
});