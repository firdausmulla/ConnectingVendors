<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendorsHandle.aspx.cs" Inherits="VendorsHandle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <link href="../dashboard.css" rel="stylesheet" />
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <title>Vendor's Handle</title>
    <!--Translate Link-->
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <script type="text/javascript" src="Translate.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
        <div class="logo-details">
            <span class="logo_name">Vendor's Place</span>
        </div>
        <ul class="nav-links">
            <li class="log_out">
                <a href="VendLogin.aspx">
                    <i class='bx bx-log-out'></i>
                    <span class="links_name">Log out</span>
                </a>
            </li>
        </ul>
    </div>
        <section class="home-section">
        <nav>
            <div class="sidebar-button">
                <i class='bx bx-menu sidebarBtn'></i>
                <span class="dashboard">Dashboard</span>
            </div>
            <div class="search-box">
                

                <!--<img src="images/profile.jpg" alt="">-->
                <h2>WELCOME <br /> </h2>
                    <center>
                    <asp:label runat="server" id="lblvendname"></asp:label></center><br/>
            </div>
        </nav>
        <div class="home-content">
            <h3><center>Manage Your Inventory</center></h3><br/>
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                       <div class="box-topic"><asp:Button ID="AddInv" runat="server" Text="Add Items" OnClick="AddInv_Click" CssClass="btn btn-primary" /></div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">
                            <asp:Button ID="UpdInv" runat="server" OnClick="UpdInv_Click" Text="Update Items" CssClass="btn btn-primary"/>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">
                            <asp:Button ID="DelInv" runat="server" Text="Delete Items" OnClick="DelInv_Click" CssClass="btn btn-primary"/></div>
                        </div>
                    </div>
                </div>

            <center>

            <div id="addForm" runat="server" visible="false">
                <!-- Add your update form here -->
                <asp:Label ID="addsname" runat="server" Text="Shop Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtaddsname" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="additname" runat="server" Text="Item Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtadditname" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="additmqnt" runat="server" Text="Item Quantity"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtitmqnt" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="addprice" runat="server" Text="Price"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtaddprice" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
        <br />
        <br />
                <asp:Button ID="addsave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSavead_Click" />
                <asp:Button ID="addcancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancelad_Click" />
            </div>


            <div id="updateForm" runat="server" visible="false">
                <!-- Add your update form here -->
                <asp:Label ID="upsname" runat="server" Text="Shop Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtupsname" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="upitemname" runat="server" Text="Item Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtupitname" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="upitemqnt" runat="server" Text="Item Quantity"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtqnt" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="upprice" runat="server" Text="Price"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtprice" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
        <br />
        <br />
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
            </div>

                <div id="delForm" runat="server" visible="false">
                <!-- Add your delete form here -->
                <asp:Label ID="delsname" runat="server" Text="Shop Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtdelsname" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="delitname" runat="server" Text="Shop Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtdelitname" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
        <br />
        <br />
                <asp:Button ID="delsave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSavedel_Click" />
                <asp:Button ID="delcancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCanceldel_Click" />
            </div></center>
        </div>
            <asp:Label ID="MsgLbl" runat="server" Text=""></asp:Label>
    <!-- HEADER -->
        </section>
        <script>
        let sidebar = document.querySelector(".sidebar");
        let sidebarBtn = document.querySelector(".sidebarBtn");
        sidebarBtn.onclick = function () {
            sidebar.classList.toggle("active");
            if (sidebar.classList.contains("active")) {
                sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
            } else
                sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
        }
        </script>
    </form>
</body>
</html>
