//public/javascripts/application.js

// This sets up the proper header for rails to understand the request type,
// and therefore properly respond to js requests (via respond_to block, for example)
$.ajaxSetup({
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

$(document).ready(function() {

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
        var $input = $(this);
        $input.autocomplete($input.attr('data-autocomplete-url'));
      });
    });

// Jquery : Calendar datepicker (non obstrusive)
 $(function (){
     $('#tasklist_due_date').datepicker();
 });

// Jquery : flexselect plugin
jQuery(document).ready(function() {
  $("select[class*=flexselect]").flexselect();
});