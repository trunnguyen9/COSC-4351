<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>


<asp:Content ID="upload1" ContentPlaceHolderID="TitleContent" runat="server">
    Upload
</asp:Content>

<asp:Content ID="upload2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    <p>Please click anonymize button to download DicomCleaner to anonymize and zip patient data. Make sure to check zip exported files option.</p>
    <a href="~/../../Content/DicomCleaner.jnlp" download="DicomCleaner.jnlp"><button type="button" onclick="">ANONYMIZE</button></a>
    <br /><br />

    <% using (Html.BeginForm("Upload", "Home", FormMethod.Post, new{enctype = "multipart/form-data"})) 
       { %>
           <input type = "file" name = "file" />
           <input type = "submit" name = "upload" />
     <%} %>

    <br />
    <br />

    </asp:Content>

<asp:Content ID="aboutContent3" ContentPlaceHolderID="Info1" runat="server">
    <asp:Image id="worldandmedicine" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/worldandmedicine1.jpg"
                           Width="100%"
                           Height="100%" />
</asp:Content>

<asp:Content ID="aboutContent4" ContentPlaceHolderID="Info2" runat="server">
    <a href="https://www.youtube.com/watch?v=qUpXJBoAoWI" title="Video of EVAR" target="_blank"><asp:Image id="evarImg" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/evarVid1_1.jpg"
                           Width="100%"
                           Height="100%" /></a>
</asp:Content>