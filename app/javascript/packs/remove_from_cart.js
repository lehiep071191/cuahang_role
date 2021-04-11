$(document).on('turbolinks:load',function () {
    

    $('.delete_item').click(function () {
        const id = $(this).data('id')
        let token = $('meta[name="csrf-token"]').attr('content')
        $.ajax({
            url: '/card_products/'+id,
            method: 'post',
            dataType: 'json',
            data: {
                _method: 'delete',
                authenticity_token: token
            },
            success: function(){
                $('#product_detail_'+id).remove()
                autoSum('.value_price','#total_cart')
            }
        })

    })

    function autoSum(item_id,total_id) {
        var array = []
        $.each($(item_id), function(index,element){
            array.push(parseInt(element.innerText))
        })
        var sum = 0
        $.each(array, function (i,s) {
            sum = sum + s
        })
        $(total_id).html(sum)
    }

        
}) 