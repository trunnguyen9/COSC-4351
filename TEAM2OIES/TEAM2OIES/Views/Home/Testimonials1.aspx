<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="testimonialContent1" ContentPlaceHolderID="TitleContent" runat="server">
    Testimonials
</asp:Content>

<asp:Content ID="testimonialContent2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    
    <p>
        TEAM2OIES are hard at work every day to bring this site to what it needs to be. We offer a testimonials page so other you can leave a comment for the world to see.
    </p>

    <div>
        <fieldset>
            <legend>Search Testimonials</legend>
            <div class="editor-field">
                <input type="text" style="border: solid 1px #cccccc; vertical-align: middle" placeholder="Search our reviews..." id="txtSearch" name="txtSearch" />
                <button type="button" onclick="">Search</button>
            </div>
        </fieldset>
    </div>

    <div>
        <fieldset>
            <legend>Testimonial Creation</legend>
                
            <% Html.BeginForm("Contact Us", "Home");%>
            
            <div class="editor-label">
                <!-- textbox for name -->
                        Name:
            </div>
            <div class="editor-field">
                    <input type="text" id="Text1" name="InputName" style="width: 400px"  />
            </div>
                
            <div class="editor-label">
                <!-- textbox for message -->
                    Message: <!--<input type="text" id="Text3" name="InputMessage" maxlength="1000" />-->
            </div>

            <div class="editor-field">
                <textarea rows="6" cols="55"></textarea>
            </div>
            <p>
                <!-- Submit button -->
                <button type="button" onclick="alert('Message sent.')">Submit</button>
            </p>

            <% Html.EndForm(); %>
        </fieldset>
    </div>
</asp:Content>

<asp:Content ID="testimonialContent3" ContentPlaceHolderID="Info1" runat="server">
    <asp:Image id="worldandmedicine" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/worldandmedicine1.jpg"
                           Width="100%"
                           Height="100%" />
</asp:Content>

<asp:Content ID="testimonialContent4" ContentPlaceHolderID="Info2" runat="server">
    <a href="https://www.youtube.com/watch?v=qUpXJBoAoWI" title="Video of EVAR" target="_blank"><asp:Image id="evarImg" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/evarVid1_1.jpg"
                           Width="100%"
                           Height="100%" /></a>
</asp:Content>
