<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated) {
%>
        <%
            if (Page.User.IsInRole("auditor")) {
        %>
                <%: Html.ActionLink("Audit", "Audit", "Home") %>
                
        <%
            } else if (Page.User.IsInRole("surgeon")) {
        %>
            
                <%: Html.ActionLink("Upload", "Upload", "Home") %>            
        <%
            }            
        %>
        Welcome <b><%: Page.User.Identity.Name %></b>
        <%: Html.ActionLink("Log Off", "LogOff", "Account") %>
<%
    }
    else {
%> 
        <li><%: Html.ActionLink("Log On", "LogOn", "Account") %></li>
        <li><%: Html.ActionLink("Register", "Register", "Account") %></li>
<%
    }
%>
