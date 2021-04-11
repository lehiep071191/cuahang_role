$(document).on('turbolinks:load',function(){
    $('.add_to_cart').click(function() {
        const id = $(this).data('id')
        let card_id = $('#cart_id_' + id).val()
        let production_detail_id = $('#production_detail_id_' + id).val()
        let quantity = $('#quantity_' + id).val()
        $.ajax({
            url: '/card_products',
            method: 'post',
            dataType: 'json', 
            data: {
                authenticity_token:  $('meta[name="csrf-token"]').attr('content'),
                card_id: card_id,
                production_detail_id: production_detail_id,
                quantity: quantity 
            },
            success: function(data){
                alert(data.message)
            }
        })
    })
    function thongbao() {
        alert('vui long dang nhap de thuc hien chuc nang nay')
    }
})