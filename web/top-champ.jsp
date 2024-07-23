
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href="styles-top-champ.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta charset="UTF-8" />
        <title>League Stat Tracker</title>
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
        <div class="champ-container">
            <div class="champ-name"><%= request.getAttribute("name") %>></div>
            <div class="champ-title"><%= request.getAttribute("title") %></div>
        </div>


        <iframe class="iframe-container"
                src="<%= request.getAttribute("video") %>"
                title="Briar Champion Spotlight | Gameplay - League of Legends"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen
        >
        </iframe>


        <div class="abilities">ABILITIES</div>

        <div class="skills-container">
            <img
                    class="skill"
                    src="<%= request.getAttribute("skill1") %>"
            />
            <img
                    class="skill"
                    src="<%= request.getAttribute("skill2") %>"
            />
            <img
                    class="skill"
                    src="<%= request.getAttribute("skill3") %>"
            />
            <img
                    class="skill"
                    src="<%= request.getAttribute("skill4") %>"
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
