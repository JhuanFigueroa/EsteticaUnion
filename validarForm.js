
let checked = document.querySelectorAll('input[type=checkbox]:checked');
const servicios=document.querySelectorAll('input[type=checkbox]');
const btnInsertar=document.getElementById('btnInsertar');
validarServicios();


servicios.forEach(servicio => {
    servicio.addEventListener('change',validarServicios);
});

function validarServicios() {
    checked = document.querySelectorAll('input[type=checkbox]:checked');
    if (checked.length == 0) {
        //SINO HA SELECCIONADO
        btnInsertar.disabled=true;
    } else{
        btnInsertar.disabled=false;
    }  
    
}