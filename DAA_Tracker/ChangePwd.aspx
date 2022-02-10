<%@ Page Title="" Language="C#" MasterPageFile="~/loginhome.Master" AutoEventWireup="true" CodeBehind="ChangePwd.aspx.cs" Inherits="DAA_Tracker.ChangePwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 30;
            margin-right: 31;
            margin-bottom: 21;
        }
        .auto-style2 {
            height: 62px;
        }
        .auto-style3 {
            height: 62px;
            width: 222px;
        }
        .auto-style4 {
            width: 222px;
            height: 51px;
        }
        .auto-style5 {
            height: 51px;
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
              <li class="nav-item  dropdown">
                <a class="nav-link" href="#" data-toggle="dropdown">Settings<i class="fa fa-caret-down hidden-xs" aria-hidden="true"></i></a>
                  <ul class="dropdown-menu" style="background-color:rgb(128, 128, 128)"  aria-labelledby="menu1">
                      <li><a href="ChangePwd.aspx" style="color:white">Change Password</a></li><hr />
                               <li><a href="Home.aspx" style="color:white">Logout</a></li>                                                               
                            </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <!-- Banner Starts Here -->
    <div class="banner header-text">
     
        <div class="banner-item-01">
          <div class="text-content">
          <div class="container">
              <h3 style="color:white;text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Change Password</h3>
                <table class="align-content-center">
                    <tr>
                        <td style="color:ghostwhite;text-align:left" class="auto-style3">
                            User Name:
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtuname" ReadOnly BackColor="Transparent"  ForeColor="White" runat="server" CssClass="auto-style1 form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="color:ghostwhite;text-align:left" class="auto-style4">
                            New Password:
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtpwd" BackColor="Transparent" CssClass="form-control" ForeColor="White" runat="server" required></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Pleaser enter minimum of 8 characters having one uppercase, lowercase and a number should be present!" ControlToValidate="txtpwd" ForeColor="#FF3300" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;<br />
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-success" Text="Change" OnClick="btnupdate_Click" />
                        </td>
                    </tr>
                </table>
              <asp:Label ID="Label1" style="color:white" runat="server" Text=""></asp:Label>
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