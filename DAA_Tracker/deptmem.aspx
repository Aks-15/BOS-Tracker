<%@ Page Title="" Language="C#" MasterPageFile="~/loginhome.Master" AutoEventWireup="true" CodeBehind="deptmem.aspx.cs" Inherits="DAA_Tracker.deptmem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
         .auto-style27 {
             height: 77px;
             width: 363px;
         }
         .auto-style28 {
             height: 77px;
             width: 470px;
         }
         .auto-style29 {
             display: block;
             font-size: 1rem;
             line-height: 1.5;
             color: #495057;
             background-clip: padding-box;
             border-radius: .25rem;
             transition: none;
             border: 1px solid #ced4da;
             background-color: #fff;
         }
         .auto-style30 {
             width: 470px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="BOSHome.aspx"><h2>DAA <em>Tracker</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <!--<ul class="navbar-nav ml-auto">
              <li class="nav-item ">
                <a class="nav-link" href="BOSHome.aspx">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item active dropdown">
                <a class="nav-link" href="#" data-toggle="dropdown">BOS Meeting<i class="fa fa-caret-down hidden-xs" aria-hidden="true"></i></a>
                  <ul class="dropdown-menu" style="background-color:rgb(128, 128, 128)"  aria-labelledby="menu1">
                              <li><a href="BOSMembers.aspx" style="color:white">Add Members</a></li><hr />
                                <li><a href="Bosmeeting.aspx" style="color:white">Add Details</a></li><hr />
                              <li><a href="ViewBosMem.aspx" style="color:white">View Members</a></li><hr />
                              <li><a href="ViewMeetDet.aspx" style="color:white">View Details</a></li>
                            </ul>
              </li>
              <!--<li class="nav-item">
                <a class="nav-link" href="Syllabus.aspx">Syllabus</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Feedback.aspx">Feedback</a>
              </li>
             <li class="nav-item">
                <a class="nav-link" href="Home.aspx">Logout</a>
              </li>
            </ul>-->
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <!--<div class="banner header-text">
      <div class="owl-banner owl-carousel">
        <div class="banner-item-01">
          <div class="text-content">
          <div class="container">
              
             </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Banner Ends Here -->
    <div class="banner header-text">
        <div class="banner-item-01">
          <div class="text-content" style="margin-left: 131px">
              <div class="container">
           
                  <br />
                  <br />
                  <br />

            <table class="align-content-center" border="6">
                <tr>
                    <td colspan="2" style="text-align:center">
                        <br />
                        <h1 style="color:whitesmoke">Department Members</h1>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="color:ghostwhite;text-align:left" class="auto-style28">
                        &nbsp;
                        Please enter the faculty names by comma seperating it-
                    </td>
                    <td class="auto-style27">
                        <asp:TextBox ID="TextBox1"  BackColor="Transparent" ForeColor="White" CssClass="auto-style29" runat="server" TextMode="MultiLine" Height="117px" Width="361px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30" style="text-align:center">
                        <br />
                        <asp:Button ID="btnback" CssClass="btn btn-danger" runat="server" Text="Go back" OnClick="btnback_Click" />
                    </td>
                    <td style="text-align:center">
                        <br />    
                        <asp:Button ID="btnupdate"  CssClass="btn btn-success" runat="server" Text="Update" OnClick="btnupdate_Click" />
                    </td>
                </tr>
            </table>               
                  </div>
              </div>
            </div>
        </div>

    <!-- Bootstrap core JavaScript -->
     <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/accordions.js"></script>


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>
</asp:Content>
