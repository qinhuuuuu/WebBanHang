$(document).ready(function () {
    // $('#category').change(function () {
    //
    // })
    $('#addProduct').click(function () {
        var name = $('#input-name').val().trim();
        var price = $('#input-price').val().trim();
        var priceReal = $('#input-priceReal').val().trim();
        var inventory = $('#input-inventory').val().trim();
        // img: $()
        let category = $('.category').find(":selected").val().trim();
        var detail = $('#input-detail').val().trim();
        var decription = $('#input-decription').val().trim();


        if (name == "" || price == "" || priceReal == "" || inventory == "" || detail == "" || decription == "") {
            alert("Vui lòng kiểm tra lại")
            return;
        }
        window.location = "/admins/addProduct?=name" + name + "&price=" + price + "&priceReal=" + priceReal + "&inventory=" + inventory + "&detail=" + detail + "&decription=" + decription + "&category=" + category;
    })
    $('.edit-product').click(function () {
        alert($(this).val())
        $.ajax({
            url: "/admins/editProduct",
            type: "get",
            data: {
                id: $(this).val().trim()
            },
            success: function (response) {
                $(".form-edit").html(response);
            },
            error: function (xhr) {
            }
        })

    })
})