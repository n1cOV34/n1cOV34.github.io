function CallmePagePresentation(){
    changeStyle();
    var retorno = "";
    $.ajax({
        type: 'POST',
        url: 'http://n1cov34.github.io/MatematicasEspeciales/presentacion.html',
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