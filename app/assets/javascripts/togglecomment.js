$(function(){
  $(".button-new-form").on("click", function(){
    var $div = $(this).closest(".new-comment");
    var $form = $div.find(".comment-form");
    $form.toggleClass("hide");
  });
});
