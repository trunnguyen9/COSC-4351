<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TEAM2OIES.Models.AuditModel>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Audit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Audit</h2>

    <table>
        <tr>            
            <th>
                Audit ID
            </th>
            <th>
                User ID
            </th>
            <th>
                User Name
            </th>
            <th>
                Date
            </th>
            <th>
                Table
            </th>
            <th>
                Attribute
            </th>
            <th>
                Access
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>            
            <td>
                <%: item.auditID %>
            </td>
            <td>
                <%: item.auditUserID %>
            </td>
            <td>
                <%: item.auditUserName %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.auditDate) %>
            </td>
            <td>
                <%: item.auditTable %>
            </td>
            <td>
                <%: item.auditAttribute %>
            </td>
            <td>
                <%: item.access %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
    
    </p>


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
