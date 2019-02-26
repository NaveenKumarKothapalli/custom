<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="text.aspx.cs" Inherits="CustomValidations.text" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%--</title>
    <script type="text/javascript">
        function ValidateInput(sender, args)
        {
            if (args.Value.length < 5)
                return args.IsValid = false;
            else return args.IsValid = true;--%>
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>
                Custom Validation Example
            </h2>
            <p>
                <label for="textSearch">Enter search text</label>
                <asp:TextBox ID="txtsearch" runat="server" MaxLength="15"></asp:TextBox>
                <asp:CustomValidator ID="SearchValidator1" runat="server"  ErrorMessage="please enter text of 5min" ForeColor="#FF5050" OnServerValidate="CustomValidator1_ServerValidate" ClientValidationFunction="ValidateInput" ControlToValidate="txtsearch"></asp:CustomValidator>

            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />

            </p>
        </div>
    </form>
</body>
</html>
