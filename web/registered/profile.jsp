<%-- 
    Document   : profile
    Created on : 12 9, 23, 9:00:55 PM
    Author     : Jam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("username") == null)
        response.sendRedirect("../login.jsp");
%>

<html>
    <head>
        <link rel="stylesheet" href="styles-profile.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta charset="UTF-8"/>
        <title>LST Profile Page</title>
    </head>

    <body>
        <header>
            <a class="lst-logo" href="..">
                <img src="../assets/PROFILE/PENDANT.png"/>
                <img src="../assets/MISC/LOGO%20TEXT%20ONLY.png" class="lst-logo-text"/>
            </a>

            <nav>
                <a href=".."> HOME </a>

                <% if (session.getAttribute("username") == null) { %>
                <a href="../registered"> PROFILE </a>
                <% } else { %>
                <a class="header-icon" href="../registered">
                    <img
                            src="../assets/PROFILE/OHNOYEN%20ICON.png"
                    />
                    <p><%= request.getServletContext().getInitParameter("display-name")  %></p>
                </a>
                <% } %>
            </nav>
        </header>

        <div class="prof-container">
            <div class="prof">
                <div class="username">OHNOYEN#TIN</div>
                <div class="icon">
                    <img
                            class="icon-id"
                            src="../assets/PROFILE/OHNOYEN%20ICON.png"
                    />
                </div>
                <div class="level">LEVEL 269</div>
            </div>
            <div class="misc">
                <img
                        class="misc-id"
                        src="../assets/PROFILE/Honor,%20Trophy,%20Banner.png"
                />
            </div>
        </div>

        <div class="perf-container">
            <div class="current-rank">
                CURRENT SEASON RANK
                <img
                        class="current-rank-id"
                        src="../assets/PROFILE/RANK%20ICONS/RANKED_SOLO.png"
                />
                <img
                        class="current-rank-id"
                        src="../assets/PROFILE/RANK%20ICONS/RANKED_FLEX.png"
                />
                <img
                        class="current-rank-id"
                        src="../assets/PROFILE/RANK%20ICONS/RANKED_TFT.png"
                />
                LAST SEASON RANK
                <img
                        class="current-rank-id"
                        src="../assets/PROFILE/RANK%20ICONS/LAST_SEASON_RANK.png"
                />
            </div>

            <div class="perf-over">
                <div class="fave-text-id">PERFORMANCE OVERVIEW</div>
                <img
                        class="perf-id"
                        src="../assets/PROFILE/PERFORMANCE%20OVERVIEW/CS_AVG_MIN.png"
                />
                <img
                        class="perf-id"
                        src="../assets/PROFILE/PERFORMANCE%20OVERVIEW/CS_ACCURACY.png"
                />
            </div>

            <div class="top-perf">
                <div class="fave-text-id">TOP PERFORMANCE</div>
                <img
                        class="top-id"
                        src="../assets/PROFILE/BEST_PERFORMANCE.png"
                />
            </div>
        </div>

        <div class="stats-container">
            <div class="stats">
                <div class="perstat-id">YOUR PERSONAL STATS</div>
                <div class="data">
                    <img
                            class="data-id"
                            src="../assets/PROFILE/PERSONAL%20STATS/WIN_RATE.png"
                    />
                    <img
                            class="data-id"
                            src="../assets/PROFILE/PERSONAL%20STATS/KDA.png"
                    />
                    <img
                            class="data-id"
                            src="../assets/PROFILE/PERSONAL%20STATS/TIME_PLAYED.png"
                    />
                    <img
                            class="data-id"
                            src="../assets/PROFILE/PERSONAL%20STATS/TOTAL_AMNT_GAMES.png"
                    />
                </div>
            </div>

            <div class="fave">
                <div class="favechamp-id">FAVORITE CHAMPIONS</div>
                <img
                        class="champ-id"
                        src="../assets/PROFILE/FAVORITE%20CHAMPIONS/FAVORITES_CAITLYN.png"
                />
                <img
                        class="champ-id"
                        src="../assets/PROFILE/FAVORITE%20CHAMPIONS/FAVORITES_KAISA.png"
                />
                <img
                        class="champ-id"
                        src="../assets/PROFILE/FAVORITE%20CHAMPIONS/FAVORITES_NILAH.png"
                />
                <img
                        class="champ-id"
                        src="../assets/PROFILE/FAVORITE%20CHAMPIONS/FAVORITES_XAYAH.png"
                />
                <img
                        class="champ-id"
                        src="../assets/PROFILE/FAVORITE%20CHAMPIONS/FAVORITES_ZERI.png"
                />
                <img
                        class="champ-id"
                        src="../assets/PROFILE/FAVORITE%20CHAMPIONS/FAVORITES_POPPY.png"
                />
            </div>
        </div>

        <div class="best-container">
            <div class="best">
                <div class="best-id">YOUR PERSONAL BEST CHAMPIONS PER ROLE</div>
                <!-- JUNGLE CHAMPS-->
                <div class="bestchamps">
                    <img
                            class="lane-id"
                            src="../assets/MISC/ICON_TOP.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_TOP_POPPY.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_TOP_ORN.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_TOP_RUMBLE.png"
                    />
                </div>
                <hr />
                <!-- TOP CHAMPS-->
                <div class="bestchamps">
                    <img
                            class="lane-id"
                            src="../assets/MISC/ICON_JUNGLE.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_JG_KHA.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_JG_RAMMUS.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_JG_KAYN.png"
                    />
                </div>
                <hr />
                <!-- TOP CHAMPS-->
                <div class="bestchamps">
                    <img
                            class="lane-id"
                            src="../assets/MISC/ICON_MID.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_MID_VEIGAR.png"
                    />
                </div>
                <hr />
                <!-- TOP CHAMPS-->
                <div class="bestchamps">
                    <img
                            class="lane-id"
                            src="../assets/MISC/ICON_SUPPORT.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_SUPP_JANNA.png"
                    />
                </div>
                <hr />
                <!-- TOP CHAMPS-->
                <div class="bestchamps">
                    <img
                            class="lane-id"
                            src="../assets/MISC/ICON_BOT.png"
                    />
                    <img
                            class="bestchamps-id"
                            src="../assets/PROFILE/BEST%20PICKS/BEST_ADC_CAIT.png"
                    />

                </div>
                <br />
            </div>
        </div>

        <a  class="submit" href="../logout" >LOG OUT</a>

        <footer>
            <div class="footer-countdown">
                <p>PATCH 2024 SEASON COUNTDOWN: <%= request.getServletContext().getAttribute("countdown")%> DAYS
                    LEFT</p>
            </div>

            <a class="lst-logo" href="..">
                <img src="../assets/PROFILE/PENDANT.png" />
                <img src="../assets/MISC/LOGO%20TEXT%20ONLY.png" class="lst-logo-text" />
            </a>
            <div class="footer-wrapper">
                <p><%= request.getServletContext().getInitParameter("project-info") %>
                </p>
                <p><%= request.getServletContext().getInitParameter("project-members") %>
                </p>
                <p>All Rights Reserved</p>
            </div>
        </footer>
    </body>
</html>

