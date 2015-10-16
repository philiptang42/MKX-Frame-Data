$('#new_comment').on('submit', function(event){
        event.preventDefault();
        var form = $(this);
        var body = $('#comment-body').val();
        var rating = $('#comment_rating').val();

        var request = $.ajax({
            url: form.attr('action'),
            method: form.attr('method'),
            data: {
                "comment": {
                "body": body,
                "rating": rating
                }
            },
            dataType: "json"});
            request.success(function(data) {
    var newCommentPanel = '<div class="panelz" style="padding-bottom:10px;"><div class="panel small-6 large-10 large-offset-1" style="display:block;", id="comments_panel"><p style="text-shadow: 2px 2px black">Written by' +
    ' ' + data.user + ' ' + data.timeText + '' + ' ago.</p><div class="panel", id="comments"><p><h5 style="text-shadow: 2px 2px black", id="c-rating">Rating:'
      + ' ' + data.rating + '</h5></p><p><h2 style="text-shadow: 2px 2px black", id="c-body">' + data.body + '</h2></p></div></div>';
              $(".comments-container").prepend(newCommentPanel);
                // var div = $('div#comments.panel');
                // var rating =  '<h5 id="c-rating">'+data.rating+'</h5>';
                // div.append(rating);
                // var body = '<h2 id="c-body">'+data.body+'</h2>';
                // div.append(body);
            });
            request.error(function(data) {
              debugger;
                alert("Error!");
            });

      });
