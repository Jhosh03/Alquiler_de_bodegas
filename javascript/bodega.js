

window.addEventListener('load', () => {


    llenar_tabla(); 
    llenar_galeria();

});

function llenar_tabla() {

    $.ajax({
        type: "POST",
        url: "../menu_administrador.aspx/listar_bodega",
        data: null,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        success: function (res) {
        
            var header = "  <thead>" +
                "< tr >" +
                "<th>ID</th>" +
                "<th>CODIGO BODEGA</th>"
                + "<th>AREA</th>"
                + "<th>DESCRIPCION</th>"
                + "<th>DIRECCION</th>"
                + "<th>ALQUILER</th>"
                + "<th>PRECIO</th>"
                + "<th>ID FOTOGRAFIA</th>"
                + "<th>Estado</th>"
                + "<th>Opciones</th>"
                + "</tr >"
                + "</thead >"
                + " <tbody>";

            $('#tbl_bodega').append(header);

            for (i = 0; i < res.d.length; i++) {
               
                    var filas = "<tr>"
                        + "<td> " + res.d[i].id_bod + "</td>"
                        + "<td> " + res.d[i].cod_bod + "</td>"
                        + "<td> " + res.d[i].area_bod + "</td>"
                        + "<td> " + res.d[i].desc_bod + "</td>"
                        + "<td> " + res.d[i].dir_bod + "</td>"
                        + "<td> " + res.d[i].alq_bod + "</td>"
                        + "<td> " + res.d[i].precio_bod + "</td>"
                        + "<td> " + res.d[i].id_img + "</td>"
                        + "<td> " + res.d[i].estado_bod + "</td>"


                        + "<td><button type='button' class='btn btn-success btn-magen'  id='modificar' onclick='editar_bod(\"" + res.d[i].id_bod + "\",\"" + res.d[i].cod_bod + "\",\"" + res.d[i].area_bod + "\",\"" + res.d[i].desc_bod + "\",\"" + res.d[i].dir_bod + "\",\"" + res.d[i].alq_bod + "\",\"" + res.d[i].precio_bod + "\",\"" + res.d[i].id_img + "\" );'><i class='fas fa-edit'></i></button>"
                        + "<button type='button' class='btn btn-danger btn-magen'  id='eliminar' onclick='eliminar_bod(\"" + res.d[i].id_bod + "\",\"" + res.d[i].estado_bod + "\" );' ><i class='fas fa-trash-alt'></i></button></td >"


                        + "</tr>";
                    $('#tbl_bodega').append(filas);
                
            }

            $('#tbl_bodega').append("</tbody>");



        },
        error: function (msg) { // función que va a ejecutar si hubo algún tipo de error en el pedido
            console.log(msg);
        }

    });




}


function editar_bod(id,cod,area,desc,dir,alq, precio,id_img) {
    
    $('#txt_cod_bod').val(cod);
    $('#txt_area_bod').val(area);
    $('#txt_desc_bod').val(desc);
    $('#txt_dir_bod').val(dir);
    $('#txt_alq_bod').val(alq);
    $('#txt_precio_bod').val(precio);
    $('#txt_id_img').val(id_img);


    $('#btn_editar_bod').click((e) => {
        e.preventDefault();
        var saludo = {
            id: id,
            codigo: $("#txt_cod_bod").val(),
            area_bod: $("#txt_area_bod").val(),
            desc_bod: $("#txt_desc_bod").val(),
            dir_bod: $("#txt_dir_bod").val(),
            alq_bod: $("#txt_alq_bod").val(),
            precio_bod: $("#txt_precio_bod").val(),
            id_img: $("#txt_id_img").val()
        };

       
        $.ajax({
            type: "POST",
            url: "../menu_administrador.aspx/editar_bodega",
            data: JSON.stringify(saludo),
            contentType: "application/json; charset=utf-8",            // tipo de contenido
            dataType: "json",                                          // formato de transmición de datos
            async: true,
            success: function (res) {                            // función que va a ejecutar si el pedido fue exitoso
                console.log(res.d);

                if (res.d == true) {
                    alert("Editado correctamente");
                    limpiar();
                    llenar_tabla(); 
                } else {
                    alert("error al editar");
                }
                
            },
            error: function (msg) { // función que va a ejecutar si hubo algún tipo de error en el pedido
                console.log(msg);
            }
        });

    })

}


function eliminar_bod(id,est) {

        alert("¿Esta seguro de eliminar el registro?");


        var eliminar = {
            id: id,
            estado_bod: est
        };


    
        $.ajax({
            type: "POST",
            url: "../menu_administrador.aspx/eliminar_bodega",
            data: JSON.stringify(eliminar),
            contentType: "application/json; charset=utf-8",            // tipo de contenido
            dataType: "json",                                          // formato de transmición de datos
            async: true,
            success: function (res) {                            // función que va a ejecutar si el pedido fue exitoso
                console.log(res.d);
               
                if (res.d == true) {
                    alert("Eliminado correctamente");
                    limpiar();
                    llenar_tabla();
                } else {
                    alert("error al eliminar");
                }

            },
            error: function (msg) { // función que va a ejecutar si hubo algún tipo de error en el pedido
                console.log(msg);
            }
        });
     
}


$('#btn_reg_bod').click((e) => {
    e.preventDefault();


    var dat_bod = {
        
        codigo: $("#txt_cod_bod").val(),
        area_bod: $("#txt_area_bod").val(),
        desc_bod: $("#txt_desc_bod").val(),
        dir_bod: $("#txt_dir_bod").val(),
        alq_bod: $("#txt_alq_bod").val(),
        precio_bod: $("#txt_precio_bod").val(),
        id_img: $("#txt_id_img").val()
    };


    $.ajax({
        type: "POST",
        url: "../menu_administrador.aspx/insertar_bodega",
        data: JSON.stringify(dat_bod),
        contentType: "application/json; charset=utf-8",            // tipo de contenido
        dataType: "json",                                          // formato de transmición de datos
        async: true,
        success: function (res) {                            // función que va a ejecutar si el pedido fue exitoso
            console.log(res.d);

            if (res.d == true) {
                alert("Registro Correcto");
                limpiar();
                llenar_tabla();
            } else {
                alert("Error al registrar");
            }

        },
        error: function (msg) { // función que va a ejecutar si hubo algún tipo de error en el pedido
            console.log(msg);
        }
    });


})



function limpiar() {
    document.getElementById("txt_cod_bod").value = "";
    document.getElementById("txt_area_bod").value = "";
    document.getElementById("txt_desc_bod").value = "";
    document.getElementById("txt_dir_bod").value = "";
    document.getElementById("txt_alq_bod").value = "";
    document.getElementById("txt_precio_bod").value = "";
    document.getElementById("txt_id_img").value = "";
    var Table = document.getElementById("tbl_bodega");
    Table.innerHTML = "";
    var Table = document.getElementById("tbl_galeria");
    Table.innerHTML = "";
}



function llenar_galeria() {

    $.ajax({
        type: "POST",
        url: "../menu_administrador.aspx/listar_galeria",
        data: null,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        success: function (res) {

            var header = "  <thead>" +
                "< tr >" +
                "<th>ID IMAGEN</th>" +
                "<th>NOMBRE</th>"
                + "<th>FOTOGRAFIA</th>"
                + "<th>OPCIONES</th>"
                + "</tr >"
                + "</thead>"
                + " <tbody>";

            $('#tbl_galeria').append(header);

            for (i = 0; i < res.d.length; i++) {

                var filas = "<tr>"
                    + '<td>' + res.d[i].ID_IMG + '</td>'
                    + "<td>" + res.d[i].DESC_IMG + "</td>"
                    + '<td><img src="' + res.d[i].URL_IMG + '" style="width:100px; height:60px"/>' + '</td>'




                    + "<td><button type='button' class='btn btn-danger btn-magen'  id='elimin' onclick='eliminar_gal(\"" + res.d[i].ID_IMG + "\",\"" + res.d[i].EST_IMG + "\" );' ><i class='fas fa-trash-alt'></i></button></td>"

                    + "</tr>";
                $('#tbl_galeria').append(filas);

            }

            $('#tbl_galeria').append("</tbody>");



        },
        error: function (msg) { // función que va a ejecutar si hubo algún tipo de error en el pedido
            console.log(msg);
        }

    });




}

function eliminar_gal(ids, ests) {

    alert("¿Esta seguro de eliminar el registro?");


    var eliminar = {
        id_gal: ids,
        estado_gal: ests
    };



    $.ajax({
        type: "POST",
        url: "../menu_administrador.aspx/eliminar_galeria",
        data: JSON.stringify(eliminar),
        contentType: "application/json; charset=utf-8",            // tipo de contenido
        dataType: "json",                                          // formato de transmición de datos
        async: true,
        success: function (res) {                            // función que va a ejecutar si el pedido fue exitoso
            console.log(res.d);

            if (res.d == true) {
                alert("Eliminado correctamente");
                limpiar();
                llenar_galeria();
            } else {
                alert("error al eliminar");
            }

        },
        error: function (msg) { // función que va a ejecutar si hubo algún tipo de error en el pedido
            console.log(msg);
        }
    });

}

// función que genera el archivo pdf
$('#btn_reporte_bod').click((e) => {
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: "../menu_administrador.aspx/listar_bodega",
        data: null,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: true,
        success: function (res) {

            console.log(res.d);

            var columns = ['ID', 'CODIGO', 'AREA', 'DESCRIPCION', 'DIRECCION', 'ESTADO', 'PRECIO'];

            var rows = [];


            for (i = 0; i < res.d.length; i++) {

                var id = res.d[i].id_bod;
                var cod = res.d[i].cod_bod;
                var area = res.d[i].area_bod;
                var descrip = res.d[i].desc_bod;
                var direccion = res.d[i].dir_bod;
                var estado = res.d[i].alq_bod;
                var prec = res.d[i].precio_bod;
                newrow = [id, cod, area, descrip, direccion, estado, prec];
                rows.push(newrow);
            }
            var doc = new jsPDF(); 
            doc.text("Reporte de Bogegas", 80, 10);
            doc.autoTable(columns, rows);
            doc.setFontStyle("Bold");
            doc.setFontSize(16);
            doc.save("Reporte_de_Bodegas");

        },
        error: function (msg) { // función que va a ejecutar si hubo algún tipo de error en el pedido
            console.log(msg);
        }

    });

})
