<%@ Page Title="" Language="C#" MasterPageFile="~/loginhome.Master" AutoEventWireup="true" CodeBehind="viewBosMem.aspx.cs" Inherits="DAA_Tracker.viewBosMem"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
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
    Banner Starts Here-->
    <div class="banner header-text">
        <div style="background-image:url(img/slide_01.jpg);background-size: cover;background-repeat: no-repeat;background-position: center center;" >
          <div >                 
              <div class="container">
                  <br />
                  <table>
                      <tr>
                          <td style="color:white">
                              <span style="font-size:18px">Please select the BOS Date  <i class="fa fa-hand-o-right" aria-hidden="true"></i></span>
                          </td>
                          <td>
                              <asp:DropDownList  ID="DropDownList1" style="text-align:left" OnSelectedIndexChanged="DropDownListmem_SelectedIndexChanged" runat="server" AutoPostBack="true" CssClass="btn btn-secondary dropdown-toggle btn-dark btn-sm"></asp:DropDownList>
                          </td>
                          <td>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Button ID="btnprint" runat="server" OnClick="btnprint_Click" Text="Print" CssClass="btn btn-success" />
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </td>
                          <td>
                              <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click"  Text="Delete" CssClass="btn btn-danger" />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnupdate" OnClick="btnupdate_Click" runat="server" Text="Update" CssClass="btn btn-primary"/>                  
                          </td>
                      </tr>
                    </table>                 
               </div>
              <br /><br />            
             <%-- <asp:Label ID="Label1" style="font-family: 'Scada', sans-serif;color:firebrick;font-size:30px;font-weight:600;" runat="server" Text="BOARD OF STUDY - MEMBERS"></asp:Label>--%><h2 style="text-align:left;font-family: 'Scada', sans-serif;color:firebrick;font-size:30px;font-weight:600;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BOARD OF STUDY - MEMBERS</h2><br /><br />                      
               <div class="align-content-center container" style="width:1200px;height:285px;overflow:scroll">
                   <asp:GridView ID="GridViewMem" style="text-align:center" CssClass="table" runat="server" BackColor="Black" ForeColor="White" BorderStyle="Solid" Font-Bold="False" GridLines="Both" AllowCustomPaging="False">                     
                   </asp:GridView>                                                        
               </div>
              <br /><br />
              <div class="container">
                  <%--<asp:Label ID="Label3" style="font-family: 'Scada', sans-serif;color:firebrick;font-size:30px;font-weight:500;text-align:left" runat="server" Text="Download Document"></asp:Label>
                  <br /><br />--%>
                   <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#000000" HeaderStyle-ForeColor="White"
                        RowStyle-BackColor="#ccffff" AlternatingRowStyle-BackColor="Black" AlternatingRowStyle-ForeColor="#000"
                        AutoGenerateColumns="false" style="width:400px;height:50px;text-align:center">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="File Name"/>
                            <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
                                <ItemTemplate>
                                   <asp:LinkButton ID="lnkDownload" OnClick="DownloadFile" runat="server" Text="Download" ForeColor="#000000"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
               </div>
              <br />
                     <hr id="boshr" runat="server" style="border-color:white"/>                                
              <%--<asp:Label ID="Label2" style="font-family: 'Scada', sans-serif;color:firebrick;font-size:30px;font-weight:600;text-align:left" runat="server" Text="BOARD OF STUDY - AGENDA"></asp:Label>--%><h2 id="bosag" runat="server" style="text-align:left;font-family: 'Scada', sans-serif;color:firebrick;font-size:30px;font-weight:600;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BOARD OF STUDY - AGENDA</h2><br /><br />
              <div id="gridag" class="align-content-center container" style="width:1000px;height:290px;overflow:scroll" runat="server">
                  
                 <asp:GridView ID="GridViewagenda" style="text-align:center" CssClass="table" runat="server" BackColor="Black" ForeColor="White" BorderStyle="Solid" Font-Bold="False" GridLines="Both" AllowCustomPaging="False">                                                        
                 </asp:GridView>                                                        
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