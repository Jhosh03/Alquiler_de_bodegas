<%@ Page Title="admin" Language="C#" MasterPageFile="~/portalweb.Master" AutoEventWireup="true" CodeBehind="portal_bodega.aspx.cs" Inherits="Bodegas_de_Guatemala.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="portal_web_bod" runat="server">
      
       <!-- NAVBAR-->
  <header class="back">
        <nav class="bg-black bg-opacity-80 flex justify-between py-5 px-10 text-lg items-center fixed top-0 w-screen">
            <div class="">
                <p class="text-2xl font-bold text-white">Bodegas de Guatemala</p>
            </div>
            <ul class="flex justify-around text-white">
                <li><a class="px-2 rounded-md hover:bg-white hover:text-black" href="/portal_bodega.aspx">Inicio</a></li>
                <li><a class="px-2 rounded-md hover:bg-white hover:text-black" href="/portal_galeria.aspx">Galeria</a></li>
                <li><a class="px-2 rounded-md hover:bg-white hover:text-black" href="coti.aspx">Contacto</a></li>
                <li><a class="px-2 rounded-md hover:bg-white text-yellow-300 hover:text-black font-bold" href="/login.aspx">Login<i
                            class="fas fa-user pl-4"></i></a></li>
            </ul>
        </nav>
        <div class="h-4/5 flex items-center">
            <div class="text-center mx-auto">
                <p class="text-xl text-gray-50 my-5">Haz crecer tu negocio estando en el lugar correcto</p>
                <h1 class="text-5xl font-bold text-gray-200">Bodegas de Guatemala</h1>
            </div>
        </div>
    </header>
    
    
    
    <section class="py-16 overflow-hidden">
        <div class="container mx-auto">
            <div class="flex justify-around w-screen">
                <div class="">
                    <div class="w-4/5">
                        <p class="text-center text-gray-800 text-2xl font-bold my-3">Innovacion</p>
                        <img src="../content/images/landing/imagen1.jpg" alt="IMAGEN_DESCRIPTIVA" class="rounded-md">
                        <p class=" text-justify my-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse hic
                            obcaecati
                            delectus? Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, ipsam?</p>
                    </div>
                </div>
                <div class="">
                    <div class="w-4/5">
                        <p class="text-center text-gray-800 text-2xl font-bold my-3">Nuestra gente y cultura</p>
                        <img src="../content/images/landing/imagen2.jpg" alt="IMAGEN_DESCRIPTIVA" class="rounded-md">
                        <p class=" text-justify my-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse hic
                            obcaecati
                            delectus? Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, ipsam?</p>
                    </div>
                </div>
                <div class="">
                    <div class="w-4/5">
                        <p class="text-center text-gray-800 text-2xl font-bold my-3">Soluciones rapidas</p>
                        <img src="../content/images/landing/imagen3.jpg" alt="IMAGEN_DESCRIPTIVA" class="rounded-md">
                        <p class=" text-justify my-4">Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse hic
                            obcaecati
                            delectus? Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit, ipsam?</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-14 bg-gray-900">
        <div class="container mx-auto max-w-4xl text-center text-white">
            <p class="text-3xl font-bold">Un poco sobre nosotros</p>
            <p class="my-8">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Libero odit eos repellat numquam
                consequatur
                quod
                sed eligendi nisi possimus beatae nihil, eveniet, sapiente velit! Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Laboriosam ipsa autem maxime distinctio, neque doloribus provident voluptatem porro
                fugit nam, excepturi praesentium, necessitatibus aperiam.</p>
            <div class="my-4">
                <a href="#" class="py-4 px-8 border border-white hover:border-blue-400 hover:text-gray-400">Saber
                    mas</a>
            </div>
        </div>
    </section>

    <section class="my-14">
        <div class="container mx-auto w-4/5 flex items-center">
            <div class="w-1/2 shadow-2xl">
                <img src="../content/images/landing/imagen4.jpg" alt="IMAGEN" class="rounded-md">
            </div>
            <div class="w-1/2 p-8">
                <h4 class="text-2xl font-bold my-2">Lorem ipsum dolor sit.</h4>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptates impedit nemo ea asperiores vero
                    tempore ad soluta laudantium, sint quis in ratione possimus perspiciatis rem? Excepturi ipsa
                    doloremque nam sapiente!</p>
            </div>
        </div>
        <div class="container mx-auto w-4/5 flex items-center">
            <div class="w-1/2 p-8">
                <h4 class="text-2xl font-bold my-2">Lorem ipsum dolor sit.</h4>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptates impedit nemo ea asperiores vero
                    tempore ad soluta laudantium, sint quis in ratione possimus perspiciatis rem? Excepturi ipsa
                    doloremque nam sapiente!</p>
            </div>
            <div class="w-1/2 shadow-2xl">
                <img src="../content/images/landing/imagen5.jpg" alt="IMAGEN" class="rounded-md">
            </div>
        </div>
    </section>

    <section class="footer-fix flex items-center">
        <div class="container mx-auto text-center w-1/2">
            <p class="text-yellow-400 text-xl">Lorem ipsum dolor sit amet.</p>
            <h4 class="text-4xl text-white uppercase my-4">Bodegas de guatemala, el espacio correcto en el lugar
                correcto
            </h4>
            <p class="text-white">Asesoría personalizada</p>
        </div>
    </section>

    <footer class="flex flex-col py-8 bg-gradient-to-b from-gray-200 via-white to-white">
        <div class="mx-auto my-8 text-gray-700 ">
            <a href="coti.aspx"
                class="py-4 px-16 font-bold border-2 hover:shadow-xl border-white border-blue-900 hover:border-yellow-400 hover:text-black">Contactar</a>
        </div>
        <div class="container mx-auto flex justify-around my-4 w-1/3">
            <a href="https://www.facebook.com/" class="text-5xl hover:text-yellow-500 hover:shadow-xl p-4"><i class="fab fa-facebook"></i></a>
            <a href="https://twitter.com/?lang=es" class="text-5xl hover:text-yellow-500 hover:shadow-xl p-4"><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com/" class="text-5xl hover:text-yellow-500 hover:shadow-xl p-4"><i class="fab fa-instagram"></i></a>
        </div>
    </footer>
</asp:Content>
