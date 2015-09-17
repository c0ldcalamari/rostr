$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  showSignup();
  showLogin();
  cancel();
});


var showSignup = function(){
  $("#signup").on('click', function(event){
    $(".button").hide();
    $("#signup-form").show();
  })
}

var showLogin = function(){
  $("#login").on('click', function(event){
    $(".button").hide();
    $("#login-form").show();
  })
}

var cancel = function(){
  $(".cancel").on('click', function(event){
    event.preventDefault();
    $(".button").show();
    $(".form").hide();
  })
}