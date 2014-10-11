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
      _this.showAppropriateRows(filter);
      _this.updateHeader(filter);
    });
  },
  showAppropriateRows: function(filter){
    if(filter == 'all') {
      this.element.find('tbody tr').show();
      return;
    }
    this.visibleRows(filter).show();
    this.hiddenRows(filter).hide();
  },
  visibleRows: function(filter){
    return this.element
      .find("tbody tr[data-pet-type='" + filter + "']");
  },
  hiddenRows: function(filter){
    return this.element
      .find("tbody tr")
      .not("[data-pet-type='" + filter + "']");
  },
  updateHeader: function(filter){
    this.element.find('.pet-count').text(
      this.visibleRows(filter).length
    );
    this.element.find('.pet-type').text(filter);
  }
};


// Initializer
$(function(){
  new IntroToRuby($(document.body));
});