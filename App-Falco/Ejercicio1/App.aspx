<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="Ejercicio1.Ejercicio_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <asp:Label runat="server" ID="txtInicio"></asp:Label>
            <asp:Button CssClass="btn" runat="server" Text="Recargar pagina" OnClick="Recargar" />
        </div>
        <div>
            <asp:Label runat="server" ID="Texto">La pagina se recargo:</asp:Label>
            <asp:Label runat="server" ID="lblContador"></asp:Label>
        </div>
    </form>

</body>
</html>
