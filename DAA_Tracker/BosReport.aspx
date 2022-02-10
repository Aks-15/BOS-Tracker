<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true"  MasterPageFile="~/loginhome.Master" AutoEventWireup="true" CodeBehind="BosReport.aspx.cs" Inherits="DAA_Tracker.BosReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="page" class="container" style="border:solid">
        <h1 style="text-align:center"><u>Board Of Study Report</u></h1>
        <hr style="position: relative;top: 10px;border: none;height: 8px;background: black;margin-bottom: 40px;"/>
        
        <p style="color:black;font-size:larger;font-family:'Times New Roman', Times, serif">
            A meeting of the Board of study in <u>MCA</u> was held on <u><%=date %></u> in <u><%=place %></u> to discuss the following agenda:           
        </p>
       
        <%= agenda_name%>
        <br />
        
        <p style="color:black;font-size:larger;font-family:'Times New Roman', Times, serif">
            <u><h5>Members present:</h5></u>
            <span style="font-weight:800">1.Chairman:</span><br />
            <%=chairman %><br />
            <span style="font-weight:800">2.Members of Department:</span><br />
            <%=mem_dep %><br />
             <span style="font-weight:800">3.Vice Chancellor Nominee:</span><br />
            <%=vcn %><br />
            <span style="font-weight:800">4.Subject Expert:</span><br />
            <%=se %><br />
            <span style="font-weight:800">5.Representative from industry/Corporate Sector/Allied Area:</span><br />
            <%=rfi %><br />
             <span style="font-weight:800">6.Meritorious Alumnus:</span><br />
            <%=ma %><br />
            <span style="font-weight:800">7. Student Representative:</span><br />
            <%=sr %><br />
            <br />
           
            <%=agenda_details %>
            <br />
            <br />
            <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Print" />--%>
        </p>
    </div> 
</asp:Content>
