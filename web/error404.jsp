<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles-error404.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta charset="UTF-8"/>
        <title>Error</title>
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
        <div class="container">
            <img src="assets/ERROR/ERROR%20ICON.png">
            <p>ERROR 404: Page not Found!</p>
            <a href="home.jsp">HOME</a>
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
