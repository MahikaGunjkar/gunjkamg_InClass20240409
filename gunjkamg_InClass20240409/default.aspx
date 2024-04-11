<!--# Name:Mahika Gunjkar
# email:gunjkamg@Mail.uc.edu
# Assignment Title: InclassAssignment20240409
# Due Date:4/11/2024
# Course: IS 3050
# Semester/Year:Spring 2024
# Brief Description: This project talks about sql connection and list box
# Citations:
# Anything else that's relevant:!-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="gunjkamg_InClass20240409._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.ListBoxCssClass
{
color:GhostWhite;
background-color:DarkOliveGreen;
font-family:Courier New;
font-size:large;
font-style:italic;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lbFruits" runat="server" CssClass="ListBoxCssClass" AutoPostBack="True" Height="156px" OnSelectedIndexChanged="lbFruits_SelectedIndexChanged" DataSourceID="SqlDataSourceClass20240409" DataTextField="LastName" DataValueField="NameID">
                <asp:ListItem>Peach</asp:ListItem>
                <asp:ListItem>Plum</asp:ListItem>
                <asp:ListItem>Apple</asp:ListItem>
                <asp:ListItem>Guava</asp:ListItem>
                <asp:ListItem>Avocado</asp:ListItem>
            </asp:ListBox>
       
            <asp:SqlDataSource ID="SqlDataSourceClass20240409" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringInClass20240409 %>" SelectCommand="SELECT [NameID], [UserName], [LastName], [FirstName] FROM [tName]"></asp:SqlDataSource>
       
        <p>
            <asp:Label ID="lblChosenFruit" runat="server" Text="Select a Fruit" ></asp:Label>
        </p>
             </div>
    </form>
</body>
</html>
