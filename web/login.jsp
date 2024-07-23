<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>League Stat Tracker</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" href="styles-login.css"/>
    </head>

    <body>
        <header>
            <a class="lst-logo" href="home.jsp">
                <img src="assets/PROFILE/PENDANT.png" />
                <img src="assets/MISC/LOGO%20TEXT%20ONLY.png" class="lst-logo-text" />
            </a>

            <nav>
                <a href="home.jsp"> HOME </a>

                <% if(session.getAttribute("username") == null) { %>
                <a href="registered"> PROFILE </a>
                <% } else { %>
                <a class="header-icon" href="registered">
                    <img
                            src="assets/PROFILE/OHNOYEN%20ICON.png"
                    />
                    <p><%= request.getServletContext().getInitParameter("display-name")  %></p>
                </a>
                <% } %>
            </nav>
        </header>
        <div class="login">
            <div class="login-box">
                <h3>SIGN IN</h3>
                <form action="login" method="post">

                    <input type="text" placeholder="Username" name="username" value=""/>

                    <input type="password" placeholder="Password" name="password" value=""/>

                    <input type="submit" placeholder="Sign In" class="submit"></input>

                </form>
                <a class="guest">Stay as Guest</a>
            </div>

            <img class="login-logo"
                 src="assets/LOGIN/LOGO%201.jpg"
            />

        </div>
        <footer>
            <div class="footer-countdown">
                <p>PATCH 2024 SEASON COUNTDOWN: <%= request.getServletContext().getAttribute("countdown")%> DAYS LEFT</p>
            </div>

            <a class="lst-logo" href="home.jsp">
                <img src="assets/PROFILE/PENDANT.png" />
                <img src="assets/MISC/LOGO%20TEXT%20ONLY.png" class="lst-logo-text" />
            </a>
            <div class="footer-wrapper">
                <p><%= request.getServletContext().getInitParameter("project-info") %></p>
                <p><%= request.getServletContext().getInitParameter("project-members") %></p>
                <p>All Rights Reserved</p>
            </div>
        </footer>
    </body>
</html>
