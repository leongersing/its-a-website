// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
  $(document).ready(function() {
    $('select#PresentationSort').change(function(){ 
        sortUl($(this).val());
      });
     
    $('input#FilterPresentationTextbox').bind('change keyup', function() {
      var searchValue = $(this).val().trim();
      
      if (searchValue == '')
        {
          $('li').show();
          return;          
        }
      
      $('li').not(":contains('" + searchValue + "')'").hide('slow');
      $('li:contains("' + searchValue + '")').show('slow');  
    });
    
    sortUl('data-title');
  });
   
   function sortUl(sortColumn){
     var mylist = $("ul");
     
     var listItems = mylist.children('li').get();
     
     listItems.sort(function(a, b){
        
        var compA = $(a).attr(sortColumn).toUpperCase();
        var compB = $(b).attr(sortColumn).toUpperCase();
        
        return (compA < compB) ? -1 : (compA > compB) ? 1 : 0;
      });
     
     $.each(listItems, function(idx, itm){ mylist.append(itm); });
   }