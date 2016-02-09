<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    
    <div id="indexContentBoxPicture">
        <asp:Image id="doctorWithPatient" runat="server"
                   AlternateText="Doctor following up with patient after surgery"
                   ImageUrl="../../Images/doctors/doctorWithPatient.jpg"
                   Width="100%"
                   Height="100%" />
    </div>

    <p>
        To learn more about ASP.NET MVC visit <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>.
    </p>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam cursus urna quis lacus cursus, non accumsan velit volutpat. Mauris ultrices quis justo non aliquet. Etiam euismod varius mauris, eget aliquam ex egestas nec. Morbi congue sapien justo, non efficitur ipsum cursus non. Integer at diam mi. In eleifend porttitor suscipit. Nullam varius euismod lectus, at ultricies velit tempus sed. Proin et massa odio. Quisque enim arcu, vestibulum ac nulla sed, volutpat aliquet lorem. Morbi vitae turpis at risus vulputate convallis eu sit amet diam. Morbi pellentesque erat odio, quis malesuada justo accumsan nec. Praesent euismod est fermentum, volutpat nunc condimentum, congue justo.

Ut iaculis at urna id suscipit. Sed eleifend elementum feugiat. Cras dictum, augue eu semper venenatis, tortor neque porttitor ex, in bibendum sem ex eu elit. Mauris volutpat risus et quam facilisis, at ullamcorper lacus egestas. Mauris bibendum orci ex, eu dignissim ex suscipit sed. Donec dictum purus semper magna porttitor, at cursus erat consequat. Fusce vulputate libero augue, eget blandit dolor aliquet eu. Suspendisse convallis, augue a vehicula ultrices, est leo faucibus eros, sit amet feugiat lacus dolor et velit. Quisque maximus vitae nisl hendrerit interdum. Quisque erat orci, laoreet vitae sapien sit amet, convallis pellentesque dui. Curabitur scelerisque id eros vel egestas. Mauris felis nisi, finibus non odio at, condimentum eleifend nibh. Fusce fermentum sapien non turpis sollicitudin, at vehicula urna ornare.
    </p>

    <p>
        Eventually we will allow Surgeons to view the site with extra pages that are surgeon only. We have started researching on how to implement the anonymized program from the site Dr. Hilford has given us.
    </p>
    <a href="../../Content/DicomCleaner.jnlp"><button type="button" onclick="">ANONYMIZE</button></a>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Info1" runat="server">
    <asp:Image id="worldandmedicine" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/worldandmedicine1.jpg"
                           Width="100%"
                           Height="100%" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="Info2" runat="server">
    <a href="https://www.youtube.com/watch?v=qUpXJBoAoWI" title="Video of EVAR" target="_blank"><asp:Image id="evarImg" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/evarVid1_1.jpg"
                           Width="100%"
                           Height="100%" /></a>
</asp:Content>