function CallmePagePresentation(){
    changeStyle();
    var retorno = "";
    $.ajax({
        type: 'POST',
        url: 'presentacion.html',
        async: false,
        success: function(data) {
            retorno = data
        }
    });
    $("#ViewModals").html(retorno)
}
function changeStyle(){
   $("#data").attr('style','display:none');
}
function removeStyle(){
   $("#data").removeAttr('style','display:none');
}