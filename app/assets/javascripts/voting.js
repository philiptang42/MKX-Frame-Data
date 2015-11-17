$(".vote").click(function()
{
  var voteType = this.id;
  var parentId = this.parentElement;
  var commentId = parentId.parentElement.id;
  var url = window.location.pathname;
  var CharacterId = url.substring(url.lastIndexOf("/") - 7);
  var MoveId = url.substring(url.lastIndexOf("/") + 1);
  $.ajax({
  METHOD: "POST",
  url: "/characters/" + CharacterId + "/comment_votes",
  dataType: "JSON",
  data: { _method:"put", comment_id: commentId, vote_type: voteType,
         character_id: CharacterId, move_id: MoveId },
  success: function(data)
  {
    $(parentId).children("#comment_score").html(data);
  },
});
});
