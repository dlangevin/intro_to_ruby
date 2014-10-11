IntroToRuby = function(body){
  this.element = body;
  this.setupSelect();
};

IntroToRuby.prototype = {
  setupSelect: function(){

    _this = this;

    this.element.find('select').on('change', function(event){
      // Gets the value of the select
      filter = $(this).val();

      if(filter == 'all') {
        _this.element.find('tbody tr').show();
        return;
      }

      // Show the appropriate rows
      _this.element
        .find("tbody tr[data-pet-type='" + filter + "']")
        .show();

      // Hide the other rows
      _this.element
        .find("tbody tr")
        .not("[data-pet-type='" + filter + "']")
        .hide();
    });
  }
};


// Initializer
$(function(){
  new IntroToRuby($(document.body));
});