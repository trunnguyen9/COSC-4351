<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="contactContent1" ContentPlaceHolderID="TitleContent" runat="server">
    Contact Us
</asp:Content>

<asp:Content ID="contactContent2" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- Header for message -->
    <h2>Message Us</h2>
    <p>
        If you need immediate assistance, please use the online support chat at the bottom right hand corner of the screen. Please do not email anything pertaining to yourself and/or your medical history. If it is urgent, and there are no representatives available on the anonymous chat, seek medical advice from your doctor or surgeon. If you have noticed something with the site that needs attention, please fill out the form below and let us know the problem so that we may fix it as soon as possible.
    </p>


    <div>
        <fieldset>
            <legend>Contact Us</legend>
                
            <% Html.BeginForm("Contact Us", "Home");%>
                    
            <div class="editor-label">
                <!-- textbox for name -->
                        Name:
            </div>
            <div class="editor-field">
                    <input type="text" id="Text1" name="InputName" style="width: 400px"  />
            </div>
                
            <div class="editor-label">
                <!-- textbox for email -->
                    Email:
            </div>

            <div class="editor-field">
                <input type="text" id="Text2" name="InputEmail" style="width: 400px" />
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

<asp:Content ID="contactContent3" ContentPlaceHolderID="Info1" runat="server">
    <asp:Image id="worldandmedicine" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/worldandmedicine1.jpg"
                           Width="100%"
                           Height="100%" />
</asp:Content>

<asp:Content ID="contactContent4" ContentPlaceHolderID="Info2" runat="server">
    <a href="https://www.youtube.com/watch?v=qUpXJBoAoWI" title="Video of EVAR" target="_blank"><asp:Image id="evarImg" runat="server"
                           AlternateText="World and Medicine"
                           ImageUrl="../../Images/doctors/evarVid1_1.jpg"
                           Width="100%"
                           Height="100%" /></a>
</asp:Content>