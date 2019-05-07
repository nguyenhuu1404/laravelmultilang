function selectLang(that){
    var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
    var lang = $(that).val();
    if(lang){
        $.ajax({
            method: "POST",
            url: "/home/setLang",
            data: {_token: CSRF_TOKEN, lang: lang}
        })
        .done(function( data ) {
            if(data == 1){
                location.reload();
            }
        });
    }

}

function checkFrom(event){
    event.preventDefault();
    var from = $('#from').val();
    if(from == ''){
        $('#from').css('border', '1px solid #ff0000');
        $('#from').focus();
        return false;
    }
    var to = $('#to').val();
    if(to == ''){
        $('#from').css('border', '1px solid #ff0000');
        $('#from').focus();
        return false;
    }
}

$( document ).ready(function() {

    $(".datepicker").datepicker({
        showButtonPanel: true
    });

    var dateFormat = "mm/dd/yy",
      from = $( "#from" )
        .datepicker({
          defaultDate: "+1d",
          minDate: 0,
          changeMonth: true,
          numberOfMonths: 2
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#to" ).datepicker({
        defaultDate: "+1d",
        changeMonth: true,
        numberOfMonths: 2
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });

    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }

      return date;
    }

    $('#search').click(function(e){
        e.preventDefault();
        var rel = $(this).attr('rel');
        if(rel == 0){
            $(this).removeClass('border-0');
            $(this).addClass('border-left');
            $('#is').show();
            $(this).attr('rel', 1);
            return false;
        }else{
            $(this).removeClass('border-left');
            $(this).addClass('border-0');
            $('#is').hide();
            $(this).attr('rel', 0);
            $('#fromsearch').submit();
        }

    });

    $(".nav-tabs a[data-toggle=tab]").on("click", function(e) {
        if ($(this).hasClass("disabled")) {
          e.preventDefault();
          return false;
        }
    });

    $("a.single_image").fancybox();
    $("a.group").fancybox({
		'transitionIn'	:	'elastic',
		'transitionOut'	:	'elastic',
		'speedIn'		:	600,
		'speedOut'		:	200,
		'overlayShow'	:	false
	});

    $("#choicedate").submit(function(e){
        var from = $('#from').val();
        if(!from){
            $('#from').css('border', '1px solid #ff0000');
            $('#from').focus();
            return false;
        }
        var to = $('#to').val();
        if(!to){
            $('#to').css('border', '1px solid #ff0000');
            $('#to').focus();
            return false;
        }
        var adult = $('#adult').val();
        if(!adult){
            $('#adult').css('border', '1px solid #ff0000');
            $('#adult').focus();
            return false;
        }
    });




});
