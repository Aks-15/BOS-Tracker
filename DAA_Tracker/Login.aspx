<%@ Page Title="" Language="C#" MasterPageFile="~/BOS.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DAA_Tracker.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tm-container" style="background-color:rgba(0,0,0,0.7)">
        <div>
            <div class="tm-row pt-4">
                <div class="tm-col-left">
                    <div class="tm-site-header media">
                        <!--<i class="fas fa-umbrella-beach fa-3x mt-1 tm-logo"></i>-->
                        <div class="media-body">
                             <h1 class="tm-sitename text-uppercase">DAA-Tracker</h1>
                            <p class="tm-slogon">Tracking of BOS Activity of MCA Department</p>
                        </div>        
                    </div>
                </div>
                <div class="tm-col-right">
                    <nav class="navbar navbar-expand-lg" id="tm-main-nav">
                        <button class="navbar-toggler toggler-example mr-0 ml-auto" type="button" 
                            data-toggle="collapse" data-target="#navbar-nav" 
                            aria-controls="navbar-nav" aria-expanded="false" aria-label="Toggle navigation">
                            <span><i class="fas fa-bars"></i></span>
                        </button>
                        <div class="collapse navbar-collapse tm-nav" id="navbar-nav">
                            <ul class="navbar-nav text-uppercase">
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="Home.aspx">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="About.aspx">About</a>
                                </li>
                                <!--<li class="nav-item">
                                    <a class="nav-link tm-nav-link" href="Services.aspx">Services</a>
                                </li>-->                            
                                <li class="nav-item active">
                                    <a class="nav-link tm-nav-link" href="Login.aspx">LogIn <span class="sr-only">(current)</span></a>
                                </li>
                            </ul>                            
                        </div>                        
                    </nav>
                </div>
            </div>
            
            <div class="tm-row">
                <div class="tm-col-left"></div>
                <main class="tm-col-right tm-contact-main"> <!-- Content -->
                    <section class="tm-content tm-contact">
                        <!--<h2 class="mb-4 tm-content-title text-center">LOG IN</h2>-->
                        <form id="contact-form" action="" method="POST">
                            <div class="form-group mb-4">
                                <asp:TextBox ID="txtuser" CssClass="form-control" placeholder="UserName" required=""  runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group mb-4">
                                <asp:TextBox ID="txtpwd" runat="server" CssClass="form-control" placeholder="Password" required="" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="text-center">
                                <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-big btn-primary" Text="LogIn" OnClick="btnlogin_Click" />
                            </div>
                            <br />                            
                        </form>
                    </section>
                </main>
            </div>
        </div>        

        <div class="tm-row">
            <div class="tm-col-left text-center">            
                <ul class="tm-bg-controls-wrapper">
                    <li class="tm-bg-control active" data-id="0"></li>
                    <li class="tm-bg-control" data-id="1"></li>
                    <li class="tm-bg-control" data-id="2"></li>
                </ul>            
            </div>        
            <!--<div class="tm-col-right tm-col-footer">
                <footer class="tm-site-footer text-right">
                    <p class="mb-0">Copyright 2020 Diagoona Co. 
                    
                    | Design: <a rel="nofollow" target="_parent" href="https://templatemo.com" class="tm-text-link">TemplateMo</a></p>
                </footer>
            </div>-->
        </div>

        <div class="tm-bg"> <!-- Diagonal background design -->
            <div class="tm-bg-left"></div>
            <div class="tm-bg-right"></div>
        </div>
    </div>

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.backstretch.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</asp:Content>
