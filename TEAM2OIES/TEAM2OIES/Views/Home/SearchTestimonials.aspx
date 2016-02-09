<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TEAM2OIES.Models.TestimonialsModel>>" %>

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
                <form method="get" action="<%: Url.Action("SearchTestimonials", "Home") %>">
                <input type="text" style="border: solid 1px #cccccc; vertical-align: middle" placeholder="Search our reviews..." id="txtSearch" name="txtSearch" />
                <button type="submit" onclick="">Search</button>
                </form>
            </div>
        </fieldset>
    </div>

    
    <%
    if (Model.Count() != 0) {
    %>    

        <% foreach (var item in Model) { %>
        <div class ="whiteblock">
            <strong class ="testimonial"><%: item.firstName %> <%: item.lastName %></strong>
            <br />                      
            <em class = "nine">                 
                <%: String.Format("{0:g}", item.testimonialDate) %>
            </em> 
            <br />
            <br />
            <%: item.testimonialContent %>               
            <br />       
        </div>    
        <% } %>
    <% 
        }
        else { %>            
                <p class = "noResult"> No Search Result for '<%: ViewData["Search"] %>' Keyword </p>            
        <% } %>

   

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

