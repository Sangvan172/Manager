<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> d5c93c1c8a716a539e38019ab7b49de11d52c3c1
<%-- 
    Document   : managerProfile
    Created on : Oct 19, 2023, 1:44:06 PM
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
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="css/managerProfile.css">
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
                    My Profile
                </div>

                <div class="user-info">
                    <p>Hey, <b>Reza</b></p>
                    <small class="text-muted">Admin</small>
                </div>
            </div>
            <!-- Add Book Table -->
            <h2>Profile Information</h2>
            <div class="acc-info">
                <div class="left-info">
                    <ul>
                        <li><label>Username: *</label><input type="text" name="name" value></li>
                    </ul>
                </div>
                <div class="right-info">
                    <ul>
                        <li><label>Password: *</label><input type="password" name="password" value="1"></li>
                    </ul>
                    <div class="btn-acc">
                        <div class="btn-update-acc">
                            <button type="submit">
                                Update Account
                            </button>
                        </div>
                        <div class="btn-cancel-acc">
                            <button type="reset">
                                Cancel
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </main>
        <!-- End of Main Content -->
    </div>
</body>

</html>