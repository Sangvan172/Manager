<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> d5c93c1c8a716a539e38019ab7b49de11d52c3c1
<%-- 
    Document   : analytics
    Created on : Oct 19, 2023, 10:56:13 AM
    Author     : Admin
--%>

<<<<<<< HEAD
=======
=======
<<<<<<< HEAD


=======
>>>>>>> 73ef4b36460e303a6015639631cf315f59e3aa53
>>>>>>> 821f1c2d40e1440dd995f1571769d5266ba22ca3
>>>>>>> d5c93c1c8a716a539e38019ab7b49de11d52c3c1
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="css/analytics.css"> 
        <title>BookStore manager</title>

    </head>

    <body>

        <div class="container-i">
            <!-- Sidebar -->

            <%@include file="sidebar.jsp" %>

            <!-- End of Sidebar -->
            <!-- Main Content -->
            <main>
                <%
                    String username = (String) request.getSession().getAttribute("username");
                    if (username == null) {
                        response.sendRedirect("/login");
                    }
                %>
                <div class="header">
                    <div class="logo-tittle">
                        <img src="/img/logo.jpg" style="width: 120px;" alt=""/>
                    </div>

                    <div class="name-tittle">
                        Analytics
                    </div>

                    <div class="user-info">
                        <p>Hey, <b><%= request.getSession().getAttribute("username")%></b></p>

                        <small class="text-muted">Admin</small>
                    </div>
                </div>

                <!-- Insights -->
                <ul class="insights">
                    <li>
                        <i class='bx bxs-user'></i>
                        <div class="info">
                            <div class="text">

                                <h3>${totalUser}</h3>

                                <p>Total Users</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <i class='bx bx-shopping-bag'></i>
                        <span class="info">
                            <div class="text">

                                <h3>${totalOrder}</h3>

                                <p>Paid Order</p>
                            </div>
                        </span>
                    </li>
                    <li><i class='bx bxs-dollar-circle'></i>
                        <span class="info">
                            <div class="text">

                                <h3>$${totalRevenue}</h3>
                                <p>Total Revenue</p>

                            </div>
                        </span>
                    </li>
                </ul>
                <!-- End of Insights -->

                <!-- New Users Section -->
                <div class="new-users">
                    <h2>New Users</h2>
                    <div class="user-list">
                        <c:forEach var="u" items="${requestScope.listNewUser}">
                            <div class="user">
                                <h2><a style="color: #000000" href="customerDetails?bid=${u.phone}">${u.name}</a></h2>
                                <p>Customer</p>
                                <p>${u.time_ago}</p>
                            </div>
                        </c:forEach>
                    </div>
                    <a class="show" href="customerManagement">Show All</a>
                </div>

                <!-- End of New Users Section -->

                <!-- Recent Orders Table -->
                <div class="recent-orders">
                    <h2>Recent Orders</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Customer Phone</th>
                                <th>Time Order</th>
                                <th>Status</th>
                                <th>Detail</th>

                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="r" items="${requestScope.listRecentOrder}">
                                <tr>
                                    <td>${r.ord_id}</td>
                                    <td>${r.cus_phone}</td>
                                    <td>${r.ord_date}</td>
                                    <c:choose>
                                        <c:when test="${r.ord_status eq 'Cancelled' || r.ord_status eq 'Rejected'}">
                                            <td style="color: #C21010;">${r.ord_status}</td>
                                        </c:when>
                                        <c:when test="${r.ord_status eq 'Waiting' || r.ord_status eq 'Preparing'}">
                                            <td style="color: #0397d1;">${r.ord_status}</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td style="color: #1ec708;">${r.ord_status}</td>
                                        </c:otherwise>
                                    </c:choose>
                                    <td><a class="view" href="orderDetails?bid=${r.ord_id}">View</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                    <a class="show" href="orderManagement">Show All</a>

                </div>
                <!-- End of Recent Orders -->
            </main>
            <!-- End of Main Content -->
        </div>

    </body>

</html>