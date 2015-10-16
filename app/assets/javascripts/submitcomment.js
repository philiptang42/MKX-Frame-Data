$('#comment-form').on('submit', function(event){
        event.preventDefault();
        var form = $(this);
        var body = $('#comment-body').val();
        var rating = $('#comment-rating').val();

        $.ajax({
            url: form.attr('action'),
            method: form.attr('method'),
            data: {
                "comment": {
                "body": body,
                "rating": rating,
                }
            },
            dataType: "json",
            success: function(data) {
                console.log(data);
                var panel = $('panel.comments');
                var rating =  '<h5="comment-rating">'+data.rating+'</h5>';
                panel.append(rating);
                var body = '<h2="comment-body">'+data.body+'</h2>';
                $(':text').val('');
            },
            error: function(){
                alert("Error!");
            }
        });
      });
