//public/javascripts/application.js

// This sets up the proper header for rails to understand the request type,
// and therefore properly respond to js requests (via respond_to block, for example)
jQuery.ajaxSetup({
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});

jQuery(document).ready(function() {

  // UJS authenticity token fix: add the authenticy_token parameter
  // expected by any Rails POST request.
  $(document).ajaxSend(function(event, request, settings) {
    // do nothing if this is a GET request. Rails doesn't need
    // the authenticity token, and IE converts the request method
    // to POST, just because - with love from redmond.
    if (settings.type == 'GET') return;
    if (typeof(AUTH_TOKEN) == "undefined") return;
    settings.data = settings.data || "";
    settings.data += (settings.data ? "&" : "") + "authenticity_token=" + encodeURIComponent(AUTH_TOKEN);
  });

});

// Jquery : Autocomplete
jQuery(function($){//on document ready
  //autocomplete
  $('input.autocomplete').each(function(){
    var input = $(this);
    input.autocomplete(input.attr('data-autocomplete-url'),{
      matchContains:1,//also match inside of strings when caching
      // mustMatch:1,//allow only values from the list
      // selectFirst:1,//select the first item on tab/enter
      removeInitialValue:0//when first applying $.autocomplete
    });
  });
});

// Jquery : Calendar datepicker (non obstrusive)
 jQuery(function (){
     $('#tasklist_due_date').datepicker();
 });

// Jquery : flexselect plugin
jQuery(document).ready(function() {
  $("select[class*=flexselect]").flexselect();
});

// Jquery : tabs
jQuery(document).ready(function() {
  $("#tabs").tabs();
});

// Jquery effects (slide tab in or out).

$('#clickme').click(function() {
  $('#show_search').slideToggle('slow', function() {
    // Animation complete.
  });
});

// Jquery effects (slide in or out).
$(document).ready(function() {
	
	// Expand Panel
	$("#open").click(function(){
		$("div#panel").slideDown("slow");
	
	});	
	
	// Collapse Panel
	$("#close").click(function(){
		$("div#panel").slideUp("slow");	
	});		
	
	// Switch buttons from "Log In | Register" to "Close Panel" on click
	$("#toggle a").click(function () {
		$("#toggle a").toggle();
	});		
		
});   

// another styling trick for CSS select

$(document).ready(function(){

    if (!$.browser.opera) {

        $('select.select').each(function(){
            var title = $(this).attr('title');
            if( $('option:selected', this).val() != ''  ) title = $('option:selected',this).text();
            $(this)
                .css({'z-index':10,'opacity':0,'-khtml-appearance':'none'})
                .after('<span class="select">' + title + '</span>')
                .change(function(){
                    val = $('option:selected',this).text();
                    $(this).next().text(val);
                    })
        });

    };

});

// jQuery flash messages

$(document).ready(function() {
  setTimeout(hideFlashes, 2500);
});

var hideFlashes = function() {
    $('p.notice, p.warning, p.error').fadeOut(1500);
};