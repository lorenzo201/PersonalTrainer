  $(document).ready(function(){

    //EL logo nos lleva a la pagina principal
    $("#logo").click(function(){
      window.location.href = "index.html";
    });



          //BOTON LOGIN
      $("#botonlogin").click(function(){
        $.post("../login.php", {usu:usuario.value, pass:password.value}, function(data, status){
            var respuesta = JSON.parse(data);
            console.log(respuesta.estatus);
            console.log(status);
            if(respuesta.estatus == true){
              alert("Te has logueado!");
                  sessionStorage.setItem("username", usuario.value);
            }else{
              alert("usuario incorrecto");
              var err = document.getElementsByClassName('errores')[0];
              err.style.color="red";
              err.innerHTML = "Usuario incorrecto";
            }
        });
      });
      // Formulario Registro

        $("#registro").submit(function(e){
          e.preventDefault();

          var error = document.getElementById('error2');
          var errList ="";
          var ret,ret2,ret3,ret4,ret5 = true;

        // validar nombre
        var nomForm = document.forms["formulario"]["nombre"].value;
        if ( nomForm == null || nomForm == "" || nomForm.length == 0  || /^\s+$/.test(nomForm) || !isNaN(nomForm) ) {
        ret = false;
           document.getElementById("usuario").style.border = '1px solid red';
         }else{
           ret = true;
           document.getElementById("usuario").style.border = '1px solid lightgray';
         }

                   /* validar email*/
                   var email = document.forms["formulario"]["email2"].value;
                   if ( ! (/^\w+([\.\-\+]?\w+)*@\w+([\.\-]?\w+)*(\.\w{2,4})+$/.test(email)) ){
                     ret3 = false;
                     document.getElementById("email2").style.border = '1px solid red';

                      }else{
                        ret3 = true;
                        document.getElementById("email2").style.border = '1px solid lightgray';
                      }



                        /*Validar contraseña*/
                        var contra = document.forms["formulario"]["contraseña"].value;
                        if ( ! (/^\w+([\.\-\+]?\w+)*\w+([\.\-]?\w+)*(\w{2,4})+$/.test(contra)) ){
                          ret4 = false;
                          document.getElementById("contraseña").style.border = '1px solid red';
                           }else{
                             ret4 = true;
                             document.getElementById("contraseña").style.border = '1px solid lightgray';
                           }


                           /*confirmar contraseña */
                           var contraseñaConf = document.forms["formulario"]["contraseñaConf"].value;
                           if(contra != contraseñaConf || contra == ""){
                             ret5 = false;
                             document.getElementById("contraseñaConf").style.border = '1px solid red';
                           }else{
                             ret5 = true;
                             document.getElementById("contraseñaConf").style.border = '1px solid lightgray';
                           }

                if (ret == true && ret2 == true && ret3 == true && ret4 == true && ret5 == true){
                   document.getElementById("enviar").innerHTML = "Enviando...";
                   document.getElementById("enviar").disabled = true;
                   $("#popup2").delay("slow").fadeOut();
              }

              return ret;

            });



});
