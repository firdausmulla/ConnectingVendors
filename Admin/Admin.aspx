<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <link href="../dashboard.css" rel="stylesheet" />
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://d3js.org/d3.v6.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bb-pkg/bb.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bb-pkg/bb.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Admin</title>
    <style>
        .tooltip {
            position: absolute;
            text-align: center;
            padding: 8px;
            font-size: 12px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            pointer-events: none;
            opacity: 0;
            z-index: 9999;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div class="sidebar">
        <div class="logo-details">
            <span class="logo_name">Admin Dashboard</span>
        </div>
        <ul class="nav-links">
            <li>
                <a href="Admin.aspx" class="active">
                    <i class='bx bx-grid-alt'></i>
                    <span class="links_name">Home</span>
                </a>
            </li>
            <li>
                <a href="AdminVendor.aspx">
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
                <span class="admin_name" id="aname">Admin</span>
                <i class='bx bx-chevron-down'></i>
            </div>
        </nav>
        <!--Home Section-->
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Vendors</div>
                        <div class="number"><asp:Label ID="lblTotalVendors" runat="server" Text="__"></asp:Label></div>
                    </div>
                    <i class='bx bx-cart-alt cart'></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Users</div>
                        <div class="number"><asp:Label ID="lblTotalUsers" runat="server" Text="__"></asp:Label></div>
                    </div>
                    <i class='bx bxs-cart-add cart two'></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Total Shops</div>
                        <div class="number"><asp:Label ID="lblTotalShops" runat="server" Text="__"></asp:Label></div>
                    </div>
                    <i class='bx bx-cart cart three'></i>
                </div>
            </div>
            <br/>
            <br/><div class="sales-boxes">
                <div class="recent-sales box">
                    <div class="title">Recently added</div>
                    <div class="sales-details">
                        <ul class="details">
                            <li class="topic">Users</li>
                            <li><asp:Label ID="addUser" runat="server" Text=" "></asp:Label></li>
                        </ul>
                        <ul class="details">
                            <li class="topic">Vendors</li>
                            <li><asp:Label ID="addVends" runat="server" Text=" "></asp:Label></li>  
                        </ul>
                        <ul class="details">
                            <li class="topic">Shops</li>
                            <li><asp:Label ID="addShop" runat="server" Text=" "></asp:Label></li>   
                        </ul>
                    </div>
                </div>
            </div>
        </div>
<br/>
        <!--Charts-->
                <div class="sales-boxes">
                <div class="recent-sales box"><br/>
                    <div class="title"><br/><center>Shop Categories</center></div>
                    <center><div id="donut-chart">
                    <input type="hidden" id="hdnChartData" runat="server" />
                        <script>
                                    var jsonData = JSON.parse(document.getElementById("hdnChartData").value);

                                    // Define a color scale
                                    var color = d3.scaleOrdinal()
                                        .domain(jsonData.map(function (d) { return d[0]; }))
                                        .range(d3.schemeCategory10);

                                    // Generate the donut chart using d3.js
                                    var chart = d3.select("#donut-chart")
                                        .append("svg")
                                        .attr("width", 1000)
                                        .attr("height", 1000)
                                        .append("g")
                                        .attr("transform", "translate(400,400)");

                                    var data = d3.pie().value(function (d) { return d[1]; })(jsonData);

                                    var segments = d3.arc()
                                        .innerRadius(80)
                                        .outerRadius(200)
                                        .padAngle(0.08)
                                        .padRadius(80);

                                    var sections = chart.selectAll("path").data(data);

                                    sections.enter()
                                        .append("path")
                                        .attr("d", segments)
                                        .attr("fill", function (d) { return color(d.data[0]); })
                                        .on("mouseover", function (d, i) {
                                            d3.select(this)
                                                .transition()
                                                .duration("100")
                                                .attr("d", d3.arc()
                                                    .innerRadius(60)
                                                    .outerRadius(110)
                                                    .padAngle(0.05)
                                                    .padRadius(50)
                                                );
                                            tooltip.transition()
                                                .duration(100)
                                                .style("opacity", 1);
                                            tooltip.html(d.data[0] + "<br>" + d.data[1] + " shops")
                                                .style("left", (d3.event.pageX + 10) + "px")
                                                .style("top", (d3.event.pageY - 15) + "px");
                                        })
                                        .on("mouseout", function (d, i) {
                                            d3.select(this)
                                                .transition()
                                                .duration("100")
                                                .attr("d", segments);
                                            tooltip.transition()
                                                .duration(100)
                                                .style("opacity", 0);
                                        });

                                    // Add text labels inside each segment
                                    var labels = chart.selectAll("text")
                                        .data(data)
                                        .enter()
                                        .append("text")
                                        .attr("text-anchor", "middle")
                                        .attr("alignment-baseline", "middle")
                                        .attr("transform", function (d) { return "translate(" + segments.centroid(d) + ")"; })
                                        .text(function (d) { return d.data[0] + " (" + d.data[1] + ")"; })

                                    //Add Scale
                                    var legend = chart.selectAll(".legend")
                                        .data(data)
                                        .enter().append("g")
                                        .attr("class", "legend")
                                        .attr("transform", function (d, i) { return "translate(" + (i * 100 - 350) + "," + 400 + ")"; });

                                    legend.append("rect")
                                        .attr("x", 0)
                                        .attr("y", -9)
                                        .attr("width", 15)
                                        .attr("height", 15)
                                        .style("fill", function (d) { return color(d.data[0]); });

                                    legend.append("text")
                                        .attr("x", 20)
                                        .attr("y", 0)
                                        .attr("dy", ".35em")
                                        .style("text-anchor", "start")
                                        .text(function (d) { return d.data[0]; });

                                    // Add the tooltip div
                                    var tooltip = d3.select("#donut-chart")
                                        .append("div")
                                        .attr("class", "tooltip")
                                        .style("opacity", 0);
                                </script></div></center>
                </div>
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
