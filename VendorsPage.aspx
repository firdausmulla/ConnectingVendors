<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendorsPage.aspx.cs" Inherits="VendorsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Boxicons -->
    <link href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css" rel="stylesheet" />
    <!-- Fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="./stylevendors.css" />
    <!--Translate Link-->
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script type="text/javascript" src="Translate.js"></script>
    <script type="text/javascript" src="vendorpage.js"></script>
    <!--Translate Link-->
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script type="text/javascript" src="Translate.js"></script>
    <title>Vendors</title>
</head>
<body>
    <form runat="server">
    <!-- HEADER -->
    <header class="header">
        <nav>
            <img src="images/websiteicon.jpg" class="logob" />
            <ul>
                <li><a href="Home1.aspx">HOME</a></li>
                <li><a href="aboutus.aspx">ABOUT US</a></li>
                <li><a href="VendorsPage.aspx" class="active">VENDORS</a></li>
                <li><a href="Location.aspx">LOCATION</a></li>
                <li><a href="VendSignUp.aspx">Become a Vendor</a></li>   
            </ul>
        <div id="google_translate_element"></div>
        </nav>
    </header>
        <h2> ALL SHOPS </h2>
        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ID="GridShops" GridLines="None">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <td style='padding: 10px;' rowspan="2">
                    <div style='background-color: #d8d0e9; border: 1px solid #C49527; border-radius: 5px; font-size: 18px; padding: 10px; font-family: Cambria'>
                        <div style='display: flex; justify-content: space-between; align-items: center;'>
                            <div style='flex-grow: 1;'>
                                <b>Shop Name: </b> <asp:Label runat="server" Text='<%# Eval("ShopName") %>'></asp:Label><br/>
                                <b>Vendor Name: </b><asp:Label runat="server" Text='<%# Eval("VendorName") %>'></asp:Label><br/>
                                <b>Shop Category: </b><asp:Label runat="server" Text='<%# Eval("ShopCategory") %>'></asp:Label><br/>
                                <b>Address: </b><asp:Label runat="server" Text='<%# Eval("Address") %>'></asp:Label><br/>
                                <b>Contact Details: Contact1- </b><asp:Label runat="server" Text='<%# Eval("Contact1") %>'></asp:Label> &nbsp; <b>Contact2- </b>
                                <asp:Label runat="server" Text='<%# Eval("Contact2") %>'></asp:Label><br/>
                                <b>Shop Timings: From- </b> <asp:Label runat="server" Text='<%# Eval("OpenTime") %>'></asp:Label> <b>To- </b> 
                                <asp:Label runat="server" Text='<%# Eval("CloseTime") %>'></asp:Label><br/>
                            </div>
                            <div style='padding-left: 10px;'>
                            </div>
                        </div>
                    </div>
                </td>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=connectingvendors;Integrated Security=True;Connect Timeout=200;Packet Size=4096" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ShopName], [VendorName], [ShopCategory], [Address], [Contact1], [Contact2], [OpenTime], [CloseTime] FROM [Shop]"></asp:SqlDataSource>

<h2> ALL ITEMS </h2>
        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ID="GridShopItems" GridLines="None">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <td style='padding: 10px;' rowspan="4">
                    <div style='background-color: #d8d0e9; border: 1px solid #C49527; border-radius: 5px; font-size: 18px; padding: 10px; font-family: Cambria'>
                        <div style='display: flex; justify-content: space-between; align-items: center;'>
                            <div style='flex-grow: 1;'>
                                <b>Shop Name: </b> <asp:Label runat="server" Text='<%# Eval("ShopName") %>'></asp:Label><br/>
                                <b>Item Name: </b><asp:Label runat="server" Text='<%# Eval("ItemName") %>'></asp:Label><br/>
                                <b>Item Quantity: </b><asp:Label runat="server" Text='<%# Eval("ItemQuantity") %>'></asp:Label><br/>
                                <b>Price: </b><asp:Label runat="server" Text='<%# Eval("Price") %>'></asp:Label><br/>
                            </div>
                            <div style='padding-left: 10px;'>
                            </div>
                        </div>
                    </div>
                </td>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=connectingvendors;Integrated Security=True;Connect Timeout=200;Packet Size=4096" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ShopName], [ItemName], [ItemQuantity], [Price] FROM [ShopItems]"></asp:SqlDataSource>
    </form>
</body>
</html>
<script type="text/javascript">
    function showForm() {
        document.getElementById('formElement').style.display = 'block';
    }
</script>