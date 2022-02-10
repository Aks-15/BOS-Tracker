<%@ Page Title="" Language="C#" MasterPageFile="~/loginhome.Master" AutoEventWireup="true" CodeBehind="updateBos.aspx.cs" Inherits="DAA_Tracker.updateBos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 67px;
        }
        .auto-style2 {
            height: 69px;
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

    <!-- Page Content
    Banner Starts Here
    <div class="banner header-text">
      <div class="owl-banner owl-carousel">
        <div class="banner-item-01">
          <div class="text-content">
             
          </div>
        </div>
      </div>
    </div>
    <!-- Banner Ends Here -->
    <div class="banner header-text">
        <div style="background-image:url(img/slide_01.jpg);background-size: cover;background-repeat: no-repeat;background-position: center center;" >
          <div >            
              <div class="container">
             <table class="auto-style27">
                 
                 <tr>
                     <td colspan="2" style="text-align:center">
                         <asp:Label ID="Label1" style="font-family: 'Scada', sans-serif;color:firebrick;font-size:30px;margin-left:-100px;font-weight:600" runat="server" Text="UPDATE BOARD OF STUDY - MEMBERS"></asp:Label>
                     <br /><br />
                     </td>
                 </tr>  
                 <tr>
                     <td style="color:white;text-align:left">
                         Date:
                     </td>
                     <td  class="auto-style34">
                         <asp:TextBox ID="txtdate" BackColor="Transparent" ReadOnly ForeColor="White" CssClass="form-control" style="margin-top:5px;width:350px" runat="server"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style35">
                         Place:
                     </td>
                     <td style="text-align:left" class="auto-style34">
                         <asp:TextBox ID="txtplace" BackColor="Transparent" ForeColor="White" CssClass="form-control"  runat="server" style="margin-top:5px;width:350px" required></asp:TextBox> 
                          </td>
                    <%-- <td class="auto-style28">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter BOS Meeting held place" ControlToValidate="txtplace" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>--%>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style36">
                         Chairman:
                     </td>
                     <td class="auto-style37" style="text-align:left">
                         <asp:TextBox ID="txtCm" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server" style="margin-top:5px;width:350px" required></asp:TextBox>
                          </td>
                     <%--<td class="auto-style28">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter the name of Chairman present" ControlToValidate="txtCm" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>--%>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style38">
                         Members of the Department:
                     </td>
                     <td class="auto-style39" style="text-align:left">
                         <asp:TextBox ID="txtMd" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server" TextMode="MultiLine" style="margin-top:5px;width:350px" required>
                         </asp:TextBox>
                          </td>
                     <%--<td class="auto-style28">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter the Members of Department" ControlToValidate="txtMd" ForeColor="Red"></asp:RequiredFieldValidator>
                         </td>--%>                        
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left;margin-top:20px" class="auto-style40">
                         Vice Chancellor Nominee:
                     </td>
                     <td class="auto-style41" style="text-align:left">
                         <asp:TextBox ID="txtVcn" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server" TextMode="MultiLine" style="margin-top:5px;width:350px" required></asp:TextBox>
                          </td>
                     <%--<td class="auto-style28">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter the Vice Chancellor Nominee" ControlToValidate="txtVcn" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>--%>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style23">
                         Subject Expert:
                     </td>
                     <td class="auto-style24" style="text-align:left">
                         <asp:TextBox ID="txtSe" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server" TextMode="MultiLine" style="margin-top:5px;width:350px" required>

                         </asp:TextBox>
                          </td>
                     <%--<td class="auto-style28"><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter the Subject Expert name" ControlToValidate="txtSe" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>--%>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style15">
                         Representative from industry/Corporate Sector/Allied Area:
                     </td>
                     <td class="auto-style16" style="text-align:left">
                         <asp:TextBox ID="txtRfi" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server" TextMode="MultiLine" style="margin-top:5px;width:350px" required></asp:TextBox>
                          </td>
                     <%--<td class="auto-style28">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter  Representative from industry/Corporate Sector/Allied Area" ControlToValidate="txtRfi" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>--%>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style1">
                     Meritorious Alumnus:
                     </td>
                     <td class="auto-style1" style="text-align:left">
                         <asp:TextBox ID="txtMa" CssClass="form-control" runat="server" BackColor="Transparent" ForeColor="White" style="margin-top:5px;width:350px" required></asp:TextBox>
                          </td>
                    <%-- <td class="auto-style28">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter name of Meritorious Alumnus" ControlToValidate="txtMa" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>--%>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style2">
                     Student Representative:
                     </td>
                     <td style="text-align:left" class="auto-style2">
                         <asp:TextBox ID="txtSr" CssClass="form-control" runat="server" BackColor="Transparent" ForeColor="White" style="margin-top:-15px;width:350px" required></asp:TextBox> 
                          </td>
                     <%--<td class="auto-style28">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter name of Student Representative" ControlToValidate="txtSr" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>--%>
                 </tr>
                 
                 <tr>
                     <%--<td style="text-align:left">
                         
                     </td>
                     <td style="text-align:left">
                        
                         
                     </td>
                  
                     <td style="text-align:center"> 
                         
                     </td>--%>
                     
                     <td style="text-align:center">
                            <asp:Button ID="Button1" CssClass="btn btn-sm btn-danger" OnClick="Button1_Click" runat="server" Text="Clear"  />                           
                     </td>
                     <td style="text-align:center">
                         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-sm btn-success" Text="Update" />
                     </td>
                 </tr>
             </table>                 
                  <br />
                  <br />
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