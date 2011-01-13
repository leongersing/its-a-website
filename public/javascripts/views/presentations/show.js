jQuery(function($) {
  $("form#new_presentation_question").hide();
  $("#question_link").toggle(function(e) {
    e.preventDefault();
    $("form#new_presentation_question").show();
    $(this).html("Hide question form");
  }, function(e) {
    e.preventDefault();
    $("form#new_presentation_question").hide();
    $(this).html("Ask a question");
  });
});