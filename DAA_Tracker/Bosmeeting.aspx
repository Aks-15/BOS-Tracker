<%@ Page Title="" Language="C#" MasterPageFile="~/loginhome.Master" AutoEventWireup="true" CodeBehind="Bosmeeting.aspx.cs" Inherits="DAA_Tracker.bosmeeting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            height: 50px;
            width: 265px;
        }
        .auto-style14 {
            height: 59px;
            width: 351px;
        }
        .auto-style15 {
            height: 64px;
            width: 265px;
        }
        .auto-style16 {
            height: 64px;
            width: 351px;
        }
        .auto-style17 {
            height: 47px;
            width: 265px;
        }
        .auto-style18 {
            height: 47px;
            width: 351px;
        }
        .auto-style19 {
            height: 61px;
            width: 265px;
        }
        .auto-style20 {
            height: 61px;
            width: 351px;
        }
        .auto-style21 {
            height: 60px;
            width: 265px;
        }
        .auto-style22 {
            height: 60px;
            width: 351px;
        }
        .auto-style23 {
            height: 65px;
            width: 265px;
        }
        .auto-style24 {
            height: 65px;
            width: 351px;
        }
        .auto-style25 {
            height: 37px;
            width: 265px;
        }
        .auto-style26 {
            height: 37px;
            width: 351px;
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
            <ul class="navbar-nav ml-auto">
              <li class="nav-item ">
                <a class="nav-link" href="BOSHome.aspx">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
             <li class="nav-item  dropdown">
                <a class="nav-link" href="#" data-toggle="dropdown">BOS Meeting<i class="fa fa-caret-down hidden-xs" aria-hidden="true"></i></a>
                  <ul class="dropdown-menu" style="background-color:rgb(128, 128, 128)"  aria-labelledby="menu1">
                      <li><a href="BOSMembers.aspx" style="color:white">Add Members</a></li><hr />
                                <li><a href="Bosmeeting.aspx" style="color:white">Add Details</a></li><hr />
                                <li><a href="deptmem.aspx" style="color:white">Update Dept Mem</a></li>                             
                            </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="ViewBosMem.aspx">View & Report</a>
              </li>
              <!--<li class="nav-item">
                <a class="nav-link" href="Syllabus.aspx">Syllabus</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Feedback.aspx">Feedback</a>
              </li>-->
             <li class="nav-item">
                <a class="nav-link" href="Home.aspx">Logout</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="banner header-text">
      <div class="owl-banner owl-carousel">
        <div class="banner-item-01">
          <div class="text-content">
          <div class="container">
             <table>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style25">Year:</td>
                     <td class="auto-style26">
                         <asp:TextBox ID="txtYear" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server"></asp:TextBox>
                      <br />
                     </td>
                     
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style19">
                         Prayer Service:
                     </td>
                     <td class="auto-style20">
                         <asp:TextBox ID="txtps" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server"></asp:TextBox>
                         <br />
                     </td>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style21">
                         Discussion on ethics syllabus:
                     </td>
                     <td class="auto-style22">
                         <asp:TextBox ID="txtds" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                         <br />
                     </td>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style23">
                         Vote of thanks:
                     </td>
                     <td class="auto-style24">
                         <asp:TextBox ID="txtvt" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                         <br />
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2" style="text-align:center">
                         <asp:Button ID="btnadd"  CssClass="btn btn-lg btn-danger" runat="server" Text="ADD" OnClick="btnadd_Click" />
                     </td>
                 </tr>
             </table>
             </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Banner Ends Here -->


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
