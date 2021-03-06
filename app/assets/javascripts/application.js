// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular
//= require jquery.ui.widget
//= require jquery.iframe-transport
//= require jquery.fileupload
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require packery.pkgd
//= require imagesloaded
//= require_tree .

$(document).ready(function(){
  $('.attachinary-input').attachinary();
  getCategoriesSection();
  getDiscoverSection();
});

var loadPowerLibrary = function(){
  var container = $(".packery-container");
  var resizeId;
  container.packery({
    itemSelector: '.packery-item'
  }).imagesLoaded(function() {
    container.packery();
  });
};

var getDiscoverSection = function(){
  $.get( "/discover", function( data ) {
    $( "#section-discover" ).html( data );
    loadPowerLibrary();
  });
};

var getCategoriesSection = function(){
  $.get( "/categories_gallery", function( data ) {
    $( "#section-categories" ).html( data );
  });
};
