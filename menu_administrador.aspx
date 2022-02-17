<%@ Page Title="" Language="C#" MasterPageFile="~/menus_internos.Master" AutoEventWireup="true" CodeBehind="menu_administrador.aspx.cs" Inherits="Bodegas_de_Guatemala.menu_administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="mensaje_de_inicio" ContentPlaceHolderID="contenido_menu" runat="server">
   
 <h4 class="text-center">Bienvenido</h4>
 <h6 class="text-center">Control y registro de Bodegas</h6>
  
</asp:Content>

<asp:Content ID="regitro_de_bodegas" ContentPlaceHolderID="Registro_bodegas" runat="server">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<script src="https://unpkg.com/jspdf@latest/dist/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.9/jspdf.plugin.autotable.min.js"></script>
<div class="mx-5 my-4 ">
    <div class="collapse" id="frm_reg_Bodega">
        <div class="row g-2">
      
            <div class="col-sm-4">
                <label class="form-label">Codigo de Bodega</label>
                <input class="form-control" ID="txt_cod_bod" />
            </div>
            <div class="col-sm-4">
                <label class="form-label">Área de la Bodega (mts^2) </label>
                
                 <input class="form-control" ID="txt_area_bod" />
            </div>
              <div class="col-sm-4">
                <label class="form-label">ID fotografia bodega </label>
                 <input class="form-control" ID="txt_id_img" />
            </div>
            <div class="col-sm-4">
                <label class="form-label">Alquiler </label>
                
                 <input class="form-control" ID="txt_alq_bod" placeholder="DISPONIBLE/NO DISPONIBLE"/>
            </div>

            <div class="col-sm-4">
                <label class="form-label">Precio mensual </label>
                
                 <input class="form-control" ID="txt_precio_bod" />
            </div>
         

            <div class="col-sm">
                <label class="form-label">Direccion</label>
            
                 <input class="form-control" ID="txt_dir_bod" />
            </div>
            <div class="col-8">
                <label class="form-label">Descripcion</label>
                 <input class="form-control" ID="txt_desc_bod" />
            </div>

            <div class="col-4 my-4 py-3">
                 <button id="btn_reg_bod" class="btn btn-primary" >Registrar</button>
                 <button id="btn_editar_bod" class="btn btn-primary">Editar</button>
                 <button id="btn_reporte_bod" class="btn btn-primary" >Imprimir</button>
           </div>
            <!-- MOSTRAR DATOS DE BD BODEGAS-->
            <table class="table table-dark table-striped" id="tbl_bodega">


            </table>

        </div>

    </div>
    </div>

      <!--DATOS DE CLIENTES-->
     <div class="collapse " id="frm_reg_cientes" >
         <div class="row g-3">
            <div class="col-md-6">
                <label for="inputEmail4" class="form-label">CODIGO CLIENTE</label>
                <input type="email" class="form-control" id="inutEmail4">

            </div>
            <div class="col-md-6">
                <label for="inputPassword4" class="form-label"> NOMBRE </label>
                <input type="password" class="form-control" id="inutPassword4">
            </div>
            <div class="col-12">
                <label for="inputAddress" class="form-label"> FECHA DE RECIBO</label>
                <input type="text" class="form-control" id="inutAddress" placeholder="">
            </div>
            <div class="col-12">
                <label for="inputAddress2" class="form-label">FECHA DE PAGO</label>
                <input type="text" class="form-control" id="inutAddress2" placeholder="">
            </div>
            <div class="col-md-6">
                <label for="inputCity" class="form-label">ESTATUS</label>
                <input type="text" class="form-control" id="inutCity">
            </div>
            <div class="col-md-4">
                <label for="inputState" class="form-label">CODIGO DE BODEGA</label>
                <select id="inutState" class="form-select">
                    <option selected>Choose...</option>
                    <option>...</option>
                </select>
            </div>
            <div class="col-md-2">
                <label for="inputZip" class="form-label">SALDO</label>
                <input type="text" class="form-control" id="inptZip">
            </div>
            <div class="col-12">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="griCheck">
                    <label class="form-check-label" for="gridCheck">
                        Check me out
                    </label>
                </div>
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary">VERIFICAR</button>
            </div>
        </div>
    </div>

    <div class="collapse" id="galeria">

        <div class="row g-2 ">
            <div class="col-md-4">
                <label for="inputPassword4" class="form-label">ID de Bodega: </label>
                <asp:TextBox ID="txt_id" runat="server" CssClass="form-control"></asp:TextBox>
            </div>


            <div class="col-md-6">
                <label for="inputPassword4" class="form-label">Titulo de imagen:</label>
                <asp:TextBox ID="txt_titulo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <label for="inputPassword4" class="form-label">Archivo:</label>
                <asp:FileUpload ID="fuploadImagen" accepted=".jpg" runat="server" CssClass="form-control" />
                </div>
           
             <div >
                    <asp:Button ID="btn_subir" runat="server" Text="Adjuntar Imagen" CssClass="btn btn-outline-primary" OnClick="btn_subir_Click" />
                     <asp:Button ID="btn_editar" runat="server" Text="Editar" CssClass="btn btn-outline-primary" OnClick="btn_editar_Click" />
                </div>
                
                 
                   
                   

        </div>



                <div class="row">
                  
                    <table class="table table-dark col-md-6" id="tbl_galeria">
                    
                    </table>


                </div>
            


            <div class="container">
                <asp:Label ID="mensaje" runat="server" Text=""></asp:Label>
            </div>




        </div>


</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="Opciones_de_usr" runat="server">

    <div class="d-grid gap-3  mx-auto my-5">
        <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#frm_reg_Bodega" aria-expanded="false" aria-controls="frm_reg_Bodega">Registro de Bodegas</button>
        <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#frm_reg_cientes" aria-expanded="false" aria-controls="frm_reg_cientes">Alquileres</button>
        <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#galeria" aria-expanded="false" aria-controls="conexion">Galeria</button>
        <a href="/portal_bodega.aspx" class="btn btn-outline-danger" type="button">cerrar sesión</a>
    </div>
</asp:Content>