//Google maps function
function initMap() {
  longitude = parseFloat($(".avaluo-form").find(".titulation-form").find("#longitude").val())
  latitude = parseFloat($(".avaluo-form").find(".titulation-form").find("#latitude").val())
        // Create a map object and specify the DOM element for display.
          var myLatLng = {lat: latitude, lng: longitude};
          var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 19,
            center: myLatLng
          });

          var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'Hello World!'
          });

}

//operations

jQuery(document).ready(function($) {
  var phorizontal =  $('.click.horizontal').data('toggle-on');
  var area = $("[id*=area]");
  var vtotal = $("[id*=vtotal]");
 
  if (phorizontal == true){
    $('.faded').css('display','block');
  }else{
    $('.faded').hide();
  }
  

  if (area != 'undefined') {
    for (var i=0; i < ($("[id*=_unitario]")).length; i++) { 
      unitario = $("[id*=_unitario]")
      var times = parseInt($("[id*=_unitario]").length);
      var area = parseInt($("[id*=_area]").val());
      var unit = parseInt($("[id*=_unitario]").val());
      total = parseFloat($("[id*=_unitario]")[i].value) * parseFloat($("[id*=_area]")[i].value);
      var vtotal = $("[id*=vtotal]")[i];
      $(vtotal).append(total);
    }
  } 
});

//form's toogles functions
document.addEventListener("turbolinks:load", function(e) {
	
	
	$('.toggle').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.cobra')
	});
	/*alcantariilado switches*/
	$('.alcantasec').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.alsector')
	});

	$('.alcantapre').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.alpredio')
	});

	/*acueducto switches*/
	$('.acuesector').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.acsector')
	});

	$('.acuepredio').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.acpredio')
	});

	/*barrio legal switch*/
	$('.barriolegal').toggles({
		drag: false,
    text:{
      on:"Aplica",
      off:"No Aplica"
    },
    checkbox:$('.blegal')
	});

	/*vias pavimentadas switch*/
	$('.vipavimentada').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.vpavimenta')
	});

	/*vias pavimentadas switch*/
	$('.vipavimentada').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.vpavimenta')
	});

	/*Gas switches*/

	$('.gasector').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.gsector')
	});

	$('.gapredio').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.gpredio')
	});


	$('.svias').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.sviasinput')
	});

	/*Telefono switches*/

	$('.telsector').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.tsector')
	});

	$('.telpredio').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.tpredio')
	});

	/*Energia switches*/

	$('.enesector').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.esector')
	});

	$('.enepredio').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.epredio')
	});

	$('.andenvias').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.anden')
	});

	/*Amoblamiento switches*/

	$('.nparques').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.parque')
	});

	$('.naire').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.aire')
	});


	$('.nparquear').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.parquear')
	});


	$('.nbasura').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.basura')
	});


	$('.nalumbra').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.alumbra')
	});


	$('.ninseguri').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.inseguri')
	});


	$('.zverdes').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.verdes')
	});


	$('.nruido').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.ruido')
	});
	

	$('.narbori').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.arbori')
	});


	$('.nsaguas').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.saguas')
	});

	$('.nalamedas').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.alamedas')
	});


	$('.notro').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.otro')
	});
	

	$('.nruta').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.ruta')
	});
	

  /*Property model*/
  $('.horizontal').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.phorizontal')
  });

  $('.conjunto').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pconjunto')
  });

   $('.porteria').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pporteria')
  });

  $('.juegos').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pjuegos')
  });

  $('.citofono').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pcitofono')
  });

   $('.multiple').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pmultiple')
  });

  $('.golfito').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pgolfito')
  });


  $('.mutiple').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pmultiple')
  });

  $('.comunal').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pcomunal')
  });

  $('.cicletero').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pcicletero')
  });

  $('.eyectora').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.peyectora')
  });

   $('.basuras').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pbasuras')
  });

  $('.piscina').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.ppiscina')
  });

 $('.central').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pcentral')
  });

 $('.constante').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pconstante')
  });


 $('.bici').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pbici')
  });

  $('.basura').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pbasura')
  });

  $('.agua').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pagua')
  });

  $('.squash').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.psquash')
  });

  $('.electrica').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pelectrica')
  });

   $('.verde').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pverde')
  });

   $('.house').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.phouse')
  });

  $('.ascensor').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pascensor')
  });

   $('.gym').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pgym')
  });

   $('.visitan').toggles({
    drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.pvisitan')
  });

  $('.remodelar').toggles({
    drag: true,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.remodelado')
  });

  
//Slide toggle function 
  function showTicket (event) {
    event.preventDefault()
    $(this).closest('.fades').find('.faded').slideToggle();
  }
 
  $('.fades').on('click', '.click', showTicket);
  
 
});

