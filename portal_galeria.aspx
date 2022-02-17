<%@ Page Title="" Language="C#" MasterPageFile="~/portalweb.Master" AutoEventWireup="true" CodeBehind="portal_galeria.aspx.cs" Inherits="Bodegas_de_Guatemala.portal_galeria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="portal_web_bod" runat="server">
    
        <header class="back-galeria">
        <nav
            class="bg-black bg-opacity-80 flex justify-between py-5 px-10 text-lg items-center fixed top-0 w-screen z-50">
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
        <div class="h-4/5 flex items-center h-full">
            <div class="text-center mx-auto w-1/2">
                <p class="text-xl text-gray-50 my-5">Contamos con variedad de espacios en las mejores ubicaciones</p>
                <h2 class="text-5xl font-bold text-gray-200 uppercase">Escoge tu bodega ideal</h2>
                <p class="mt-8 text-yellow-400">Realiza tu cotizacion dando click en detalles y con gusto se te brindará más información 
                    sobre nuestros planes y precios. 
                </p>
            </div>
        </div>
    </header>

    
    
    
    
    <section>
        <div class="grid grid-cols-2 gap-1" id="card_galeria">
           
 
        </div>
    </section>

      <!-- footer... -->
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
