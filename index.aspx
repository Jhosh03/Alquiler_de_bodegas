<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Bodegas_de_Guatemala.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
    crossorigin="anonymous"></script>
  <title>Bodegas de Guatemala</title>
</head>
<body style="background:url(/img/high-level-rack-408222_1920.jpg) no-repeat;">
    <form id="frm_inicio" runat="server">   
<!-- NAVBAR-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">BODEGAS DE GUATEMALA</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item mx-4">
            <a class="nav-link active" aria-current="page" href="#">Inicio</a>
          </li>
          <li class="nav-item mx-4">
            <a class="nav-link" href="#">Galeria</a>
          </li>
          <li class="nav-item mx-4">
            <a class="nav-link" href="#">Contacto</a>
          </li>
        </ul>
      </div>
      <!--lista desplegable-->
      <div class="collapse navbar-collapse d-flex justify-content-end mx-5" id="navbarNavDarkDropdown">
        <ul class="navbar-nav">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button"
              data-bs-toggle="dropdown" aria-expanded="false">
              Opciones
            </a>
            <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
              <li><a class="dropdown-item" href="/login.aspx">1. Login</a></li>
              <li><a class="dropdown-item" href="#">2. Adm</a></li>
              <li><a class="dropdown-item" href="#">3. </a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>  
    
    <div class="container my-5 bg-dark text-light opacity-75">
    <h1 class=" text-center  text-light"> ¿Quienes somos? </h1>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod cumque libero veritatis quaerat. Quisquam provident alias voluptatibus ducimus dolor vitae eaque, nulla officia aliquid, veniam ratione quia facilis officiis reprehenderit.</p>
  </div>
        </form>
</body>
</html>
