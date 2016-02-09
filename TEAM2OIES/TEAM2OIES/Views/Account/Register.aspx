<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TEAM2OIES.Models.RegisterModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Register</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true, "Account creation was unsuccessful. Please correct the errors and try again.")%>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.accessLevel)%>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.accessLevel, new SelectList(Model.accessLevelList, "Value", "Text"),"---Select A Role---")%>
                <%: Html.ValidationMessageFor(model => model.accessLevel)%>
            </div>  
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.institutionId)%>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(model => model.institutionId, new SelectList(Model.InstitutionList, "Value", "Text"),"---Select Institution---")%>
                <%: Html.ValidationMessageFor(model => model.institutionId)%>
            </div>                    
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.firstName) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.firstName) %>
                <%: Html.ValidationMessageFor(model => model.firstName) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.lastName) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.lastName) %>
                <%: Html.ValidationMessageFor(model => model.lastName) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.email) %>
                <%: Html.ValidationMessageFor(model => model.email) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.username) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.username) %>
                <%: Html.ValidationMessageFor(model => model.username) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Password) %>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(model => model.Password)%>
                <%: Html.ValidationMessageFor(model => model.Password) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ConfirmPassword) %>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(model => model.ConfirmPassword)%>
                <%: Html.ValidationMessageFor(model => model.ConfirmPassword) %>
            </div>
            
            <p>
                <input type="submit" value="Register" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to Home", "Index", "Home") %>
    </div>

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

