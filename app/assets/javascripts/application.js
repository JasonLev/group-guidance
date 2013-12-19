// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function () {
  // $( window ).load(function() {
  //   if ( $('#guidance-list').length < 3) {
  //   alert("You need to provide three advisers.")
  //   };
  // });

  // open the profile modal
  $('#profile-open').click(function(event) {
    event.preventDefault();
    TukTuk.Modal.show("profile");
  });

  // close the profile modal
  $('.transparent.small.on-right.inline.icon.remove').click(function(event) {
    TukTuk.Modal.hide("profile");
    TukTuk.Modal.hide("pending-list");
  });
  $('#update-submit').click(function(event) {
    TukTuk.Modal.hide("profile");
  });

  // open the add-adviser modal
  $('#add-adviser-open').click(function(event) {
    event.preventDefault();
    TukTuk.Modal.show("add-adviser");
  });

  // close the add-adviser modal
  $('#add-adviser-submit').click(function(event) {
    TukTuk.Modal.hide("add-adviser");
  });
  $('#add-adviser-cancel').click(function(event) {
    event.preventDefault();
    TukTuk.Modal.hide("add-adviser");
  });

  // open the add-item modal
  $('#add-item-open').click(function(event) {
    event.preventDefault();
    TukTuk.Modal.show("add-item");
  });

  // close the add-item modal
  $('#add-item-cancel').click(function(event) {
    event.preventDefault();
    TukTuk.Modal.hide("add-item");
  });

  // open the pending-list modal
  $('#pending-open').click(function(event) {
    event.preventDefault();
    TukTuk.Modal.show("pending");
  });

  // close the pending-list modal
  $('#pending-close').click(function(event) {
    event.preventDefault();
    TukTuk.Modal.hide("pending");
  });
})