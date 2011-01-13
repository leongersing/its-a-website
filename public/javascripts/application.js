// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery(function($) {
  $('select#PresentationSort').change(function(){
      sortUl($(this).val());
    });

  $('input#FilterPresentationTextbox').bind('change keyup', function() {
    var show = $(),
        hide = $(),
        searchValue = $(this).val().trim(),
        regex = new RegExp(searchValue, "gi");

    if(searchValue == '') {
      show = $('li');
    } else {
      $('li').each(function() {
        var isMatch = $(this).html().toLowerCase().match(regex);
        if(isMatch) {
          show = show.add(this);
        } else {
          hide = hide.add(this);
        }
      });
    }
    show.show('slow');
    hide.hide('slow');
  });

  sortUl('data-title');

});

function sortUl(sortColumn){
  var mylist = $("ul");

  var listItems = mylist.children('li');

  listItems.sort(function(a, b){
    var compA = $(a).attr(sortColumn).toUpperCase();
    var compB = $(b).attr(sortColumn).toUpperCase();
    return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
  });

  $.each(listItems, function(idx, itm){ mylist.append(itm); });
}