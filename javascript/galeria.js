

window.addEventListener('load', () => {
      
    llenar_gal();
});

function llenar_gal() {

    console.log("prueba");

    $.ajax({
        type: "POST",
        url: "../portal_galeria.aspx/listar_gale",
        data: null,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        success: function (res) {
            console.log("prueba 2");
            for (i = 0; i < res.d.length; i++) {
                console.log("prueba3");
                var contenido = `<div class="bg-gray-800 py-2 gradient-card cursor-default z-0">
                <img src="${res.d[i].id_img}" alt="" class="w-full">
                <h3 class="text-2xl font-bold uppercase text-white text-center mt-4">
                 Código: ${res.d[i].cod_bod}
                </h3>
                <p class="text-white my-4 p-4 text-2xl">
                Descripcion: ${res.d[i].desc_bod}
                </p>
                <p class="text-white my-4 p-4 text-2xl">Ubicacion: ${res.d[i].dir_bod}</p>
                <p class="text-white my-4 p-4 text-2xl">Area(mts^2): ${res.d[i].area_bod}</p>

                <div class="flex justify-center my-4">
                    <a href='../coti.aspx' onclick='contacto()' class="px-4 py-2 hover:shadow-xl text-white border border-gray-100 hover:border-yellow-400 hover:text-yellow-500">Ver
                        detalles </a>
                </div>
            </div>`;

               
                $('#card_galeria').append(contenido);

            }



        },
        error: function (msg) { // función que va a ejecutar si hubo algún tipo de error en el pedido
            console.log(msg);
        }

    });
}



 function contacto (){


 window.location.href ="../coti.aspx";

}