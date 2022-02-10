<%@ Page Title="" Language="C#" MasterPageFile="~/loginhome.Master" AutoEventWireup="true" CodeBehind="Bosmeeting.aspx.cs" Inherits="DAA_Tracker.bosmeeting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
     <br /><br /><br />
         
             <table>
                  <tr>
                     <td colspan="2">
                         <asp:Label ID="Label1" style="font-family: 'Scada', sans-serif;color:firebrick;font-size:30px;margin-left:50px;font-weight:600" runat="server" Text="BOARD OF STUDY - AGENDA"></asp:Label>
                     
                     </td>
                 </tr>
                    <tr>
                      <td style="color:ghostwhite;text-align:left" class="auto-style25">
                            <br />
                            Please select the date <i class="fa fa-hand-o-right" aria-hidden="true"></i><br />
                            <br />
                  
                     </td>
                      <td>
                          <br />
                          <asp:DropDownList  ID="ddlAgendaList"  runat="server" AutoPostBack="true" CssClass="btn btn-secondary dropdown-toggle btn-dark btn-sm" OnSelectedIndexChanged="ddlAgendaList_SelectedIndexChanged"></asp:DropDownList>
                          <br />
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select BOS Meeting held date" ControlToValidate="txtAgendaDet" ForeColor="Red"></asp:RequiredFieldValidator>
                          <br />
                      </td>
                  </tr>

                  <tr>
                     <td style="color:white;text-align:left" class="auto-style25">Name of the Agenda</td>
                     <td class="auto-style26">
                         <asp:TextBox ID="txtAgendaName" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqagname" runat="server" ErrorMessage="Please enter the Name of the Agenda" ControlToValidate="txtAgendaName" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                     </td>
                     
                 </tr>
              
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style25">Agenda Details</td>
                     <td class="auto-style26">
                         <asp:TextBox ID="txtAgendaDet" BackColor="Transparent" ForeColor="White" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the Agenda Details" ControlToValidate="txtAgendaDet" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                     </td>
                     
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style25">Discussion/Suggestions</td>
                     <td class="auto-style26">
                         <asp:TextBox ID="txtDiscus" BackColor="Transparent" ForeColor="White" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Discussion/Suggestions" ControlToValidate="txtDiscus" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br />
                     </td>
                     
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style19">
                         Resolution
                     </td>
                     <td class="auto-style20">
                         <asp:TextBox ID="txtResoln" BackColor="Transparent" ForeColor="White" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter the Resolution of Agenda" ControlToValidate="txtResoln" ForeColor="Red"></asp:RequiredFieldValidator>
                         <br />
                     </td>
                 </tr>
                 <tr>
                     <td style="color:white;text-align:left" class="auto-style21">
                         Action Taken
                     </td>
                     <td class="auto-style22">
                         <asp:TextBox ID="txtActnTakn" BackColor="Transparent" ForeColor="White" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter the Action taken from this Agenda" ControlToValidate="txtActnTakn" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                     </td>
                 </tr>
                 
                 <tr>
                     <%--<td style="text-align:left">
                         
                     </td>
                     <td style="text-align:left">
                        
                         
                     </td>
                  
                     <td style="text-align:center"> 
                         
                     </td>--%>
                     
                     <td colspan="3">
                            <asp:Button ID="btnClear" CssClass="btn btn-sm btn-danger" runat="server" Text="Clear" OnClick="btnClear_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-sm btn-success" Text="Add Agenda" OnClick="btnAdd_Click"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btndone" runat="server" Onclick="btndone_Click" CssClass="btn btn-sm btn-primary" CausesValidation="false" Text="Done" />
                     </td>
                 </tr>
             </table>              
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