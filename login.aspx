<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Bodegas_de_Guatemala.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous"/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@300;400;600&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="css/style.css"/>
    <title>Login</title>
</head>
<body class="bg-dark">
   
        <section>
        <div class="row g-0">
            <div class="col-lg-7 d-none d-md-block">
                <div id="carouselExampleIndicators" class="carousel carousel-dark slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item imagen1 min-vh-100 active">

                        </div>
                        <div class="carousel-item imagen2 min-vh-100">

                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <div class="col-lg-5 d-flex flex-column align-items-end min-vh-100">

                <div class="px-lg-5 py-lg-4 p-4 w-100 align-self-center mt-5">
                    <div class="px-lg-5 pt-lg-4 pb-lg-3 p-4 w-100 mb-4">
                        <h1 class="link-light text-center">Bodegas de Guatemala</h1>
                    </div>
                    <form id="frm_login" runat="server">
                        <div class="mb-4">
                            <label for="exampleInputEmail1" class="font-weight-bold link-light form-label">Usuario</label>
    
                            <asp:TextBox ID="txt_usr" type="text" class="form-control bg-dark-x border-0" placeholder="nombre de usuario" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-4">
                            <label for="exampleInputPassword1"
                                class="font-weight-bold link-light form-label">Contraseña</label>
              
                             <asp:TextBox ID="txt_pass" type="password" class="form-control bg-dark-x border-0 mb-2" placeholder="password" runat="server"></asp:TextBox>

                            <a href="#" id="emailHelp" class="form-text text-muted text-decoration-none">¿Has olvidado
                                tu contraseña?</a>
                        </div>
                        <div class="d-flex justify-content-around">
                            

                            <asp:Button ID="btn_login" runat="server" class="btn btn-outline-primary fs-6 flex-grow-1 me-2" Text="Iniciar Sesión" OnClick="btn_login_Click" />
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
        crossorigin="anonymous"></script>
</body>
</html>
