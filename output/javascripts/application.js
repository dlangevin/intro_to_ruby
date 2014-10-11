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
    this.visibleRows(filter).show();
    this.hiddenRows(filter).hide();
  },
  visibleRows: function(filter){
    if(filter == 'Pet') {
      return this.element.find('tbody tr');
    }
    return this.element
      .find("tbody tr[data-pet-type='" + filter + "']");
  },
  hiddenRows: function(filter){
    if(filter == 'Pet') {
      return this.element.find("tbody tr").not("*");
    }
    return this.element
      .find("tbody tr")
      .not("[data-pet-type='" + filter + "']");
  },
  updateHeader: function(filter){
    rowCount = this.visibleRows(filter).length;
    this.element.find('.pet-count').text(rowCount);

    if(rowCount != 1) {
      filter = filter + 's';
    }

    this.element.find('.pet-type').text(filter);
  }
};


// Initializer
$(function(){
  new IntroToRuby($(document.body));
});