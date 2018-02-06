<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="Green" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet/my.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" align="center" cellspacing="0" width="300px" runat="server" class="tablegrid">
                <tr>
                    <th colspan="2">
                        STUDENT INFORMATION
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="labName" Text="enter your name" runat="server">
                        </asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ToolTip="enter your name" ID="txtName" runat="server" CssClass="textfield"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" Text="Enter Address" runat="server">
                        </asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ToolTip="enter your address" ID="txtAddress" TextMode="MultiLine" runat="server" CssClass="textfield"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ToolTip="Click Here" ID="btnButton" Text="Submit" runat="server" CssClass="smartbutton" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
