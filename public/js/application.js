$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  loginInitial();
  showForm();
  showLogin();
  cancel();

});


var cancel = function(){
  $(".cancel").on('click', function(event){
    event.preventDefault();
    $(".button").show();
    $(".form").hide();
  })
}

var showForm = function(){
  $("#create-user-button").on("click", function(event){
    $('#create_user_form').show();
    $(this).hide();
  })
}

var showLogin = function(){
  $(".login-button").on("click", function(event){
    $("#login-form").show();
    $(this).hide();
  })
}

var loginInitial = function(){
  $("#login-form").hide();
  $("#login-button").show();
}