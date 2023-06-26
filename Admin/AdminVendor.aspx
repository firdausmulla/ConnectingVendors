<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminVendor.aspx.cs" Inherits="Admin_AdminVendor" %>

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
    <title>Vendors</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="sidebar">
        <div class="logo-details">
            <span class="logo_name">Admin Dashboard</span>
        </div>
        <ul class="nav-links">
            <li>
                <a href="Admin.aspx">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Home</span>
                </a>
            </li>
            <li>
                <a href="AdminVendor.aspx" class="active">
                    <i class='bx bx-box'></i>
                    <span class="links_name">Vendors</span>
                </a>
            </li>
            <li>
                <a href="AdminUser.aspx">
                    <i class='bx bx-list-ul'></i>
                    <span class="links_name">Users</span>
                </a>
            </li>
            <li>
                <a href="AdminShop.aspx">
                    <i class='bx bx-pie-chart-alt-2'></i>
                    <span class="links_name">Shops</span>
                </a>
            </li>
            <li class="log_out">
                <a href="AdminLogin.aspx">
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
                <input type="text" placeholder="Search..." />
                <i class='bx bx-search'></i>
            </div>
            <div class="profile-details">
                <!--<img src="images/profile.jpg" alt="">-->
                <span class="admin_name">Admin</span>
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                       <div class="box-topic"><asp:Button ID="UpdVend" runat="server" OnClick="UpdVend_Click" Text="Update" CssClass="btn btn-primary" /></div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">
                            <asp:Button ID="DelVend" runat="server" Text="Delete" OnClick="DelVend_Click" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">
                            <asp:Button ID="ShowVendors" runat="server" Text="Show" OnClick="ShowVendors_Click" CssClass="btn btn-primary"/></div>
                        </div>
                    </div>
                </div>

            <center>
            <div id="updateForm" runat="server" visible="false">
                <!-- Add your update form here -->
                <asp:Label ID="vid" runat="server" Text="Vendor ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtvid" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="upvname" runat="server" Text="Vendor Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtupvname" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="upsname" runat="server" Text="Shop Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtupsname" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="upeid" runat="server" Text="Email-ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txteid" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="upcnt1" runat="server" Text="Contact 1"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcnt1" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
                <asp:Label ID="upcnt2" runat="server" Text="Contact 2"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtcnt2" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
        <br />
        <br />
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
            </div>

                <div id="delForm" runat="server" visible="false">
                <!-- Add your delete form here -->
                <asp:Label ID="delvid" runat="server" Text="Vendor ID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtdel" runat="server" Height="24px" Width="163px"></asp:TextBox><br /><br />
        <br />
        <br />
                <asp:Button ID="delsave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSavedel_Click" />
                <asp:Button ID="delcancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" OnClick="btnCanceldel_Click" />
            </div></center>

            </div>

        <!--Table-->
        <div class="home-content">
            <center>
              <div class="sales-details">
                  <asp:GridView ID="GridVend" runat="server" CssClass="table table-striped table-bordered" Font-Size="Small">
                      <HeaderStyle CssClass="thead-dark" />
                      <RowStyle CssClass="table-light" />
                      <AlternatingRowStyle CssClass="table-secondary" />
                      <PagerStyle CssClass="pagination" />
                      <EmptyDataTemplate>
                          <div class="alert alert-warning">No data to display.</div>
                      </EmptyDataTemplate>
                  </asp:GridView>
              </div>
                </center>
            <asp:Label ID="MsgLbl" runat="server" Text=""></asp:Label>
          </div>
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
