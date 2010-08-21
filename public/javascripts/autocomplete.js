/*$('.auto_search_complete').autocomplete({
    minLength: 3,
    delay: 600,
    source: function(request, response) {
        $.ajax({
            url: "/autocomplete.js",
            dataType: "json",
            data: {term: request.term},
            success: function( data ) {
                response( data );
            }
        });
    }
});  */
   
$(".auto_search_complete").autocomplete({
    source: "/autocomplete.js",
    minLength: 3
});
