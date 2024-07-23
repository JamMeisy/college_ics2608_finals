<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <link rel="stylesheet" href="styles-home.css" />
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

    <div class="content">
      <div class="lol-logo">
        <img src="assets/MISC/LOL_LOGO.png" />
      </div>

      <div class="play-now">
        <h2>PLAY</h2>
      </div>

      <section id="home-stats">
        <div class="container-top">
          <div class="container-description">
            <p>TOP PROS</p>
            <p>
              Get to know the top performing eSports players!
            </p>
          </div>

          <div class="container-top-headers">
            <div class="table-header header-name">
              <p>PLAYER</p>
            </div>
            <div class="table-header header-attribute">
              <p>RANK</p>
              <p>KDA</p>
              <p>WR%</p>
            </div>
          </div>

          <!--TABLE DATA-->
          <div class="container-top-data">
            <div class="entity player">
              <form class="header-name" method="get" action="top-player">
                <input
                  type="submit"
                  id="player-zeus"
                  name="player"
                  value="zeus"
                  hidden
                />
                <label class="header-wrapper" for="player-zeus">
                  <img
                    src="assets/ESPORTS%20PLAYER/ICON_ZEUS.webp"
                  />
                  <p>Zeus</p>
                </label>
              </form>

              <div class="header-attribute">
                <img src="assets/PROFILE/RANK%20ICONS/RANK_DIAMOND.webp" />
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>

            <div class="entity player">
              <form class="header-name" method="get" action="top-player">
                <input
                        type="submit"
                        id="player-oner"
                        name="player"
                        value="oner"
                        hidden
                />
                <label class="header-wrapper" for="player-oner">
                  <img
                          src="assets/ESPORTS%20PLAYER/ICON_ONER.webp"
                  />
                  <p>Oner</p>
                </label>
              </form>

              <div class="header-attribute">
                <img src="assets/PROFILE/RANK%20ICONS/RANK_DIAMOND.webp" />
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>

            <div class="entity player">
              <form class="header-name" method="get" action="top-player">
                <input
                        type="submit"
                        id="player-faker"
                        name="player"
                        value="faker"
                        hidden
                />
                <label class="header-wrapper" for="player-faker">
                  <img
                          src="assets/ESPORTS%20PLAYER/ICON_FAKER.webp"
                  />
                  <p>Faker</p>
                </label>
              </form>

              <div class="header-attribute">
                <img src="assets/PROFILE/RANK%20ICONS/RANK_DIAMOND.webp" />
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>

            <div class="entity player">
              <form class="header-name" method="get" action="top-player">
                <input
                        type="submit"
                        id="player-guma"
                        name="player"
                        value="guma"
                        hidden
                />
                <label class="header-wrapper" for="player-guma">
                  <img
                          src="assets/ESPORTS%20PLAYER/ICON_GUMAYUSI.webp"
                  />
                  <p>Guma</p>
                </label>
              </form>

              <div class="header-attribute">
                <img src="assets/PROFILE/RANK%20ICONS/RANK_DIAMOND.webp" />
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>

            <div class="entity player">
              <form class="header-name" method="get" action="top-player">
                <input
                        type="submit"
                        id="player-keria"
                        name="player"
                        value="keria"
                        hidden
                />
                <label class="header-wrapper" for="player-keria">
                  <img
                          src="assets/ESPORTS%20PLAYER/ICON_KERIA.webp"
                  />
                  <p>Keria</p>
                </label>
              </form>

              <div class="header-attribute">
                <img src="assets/PROFILE/RANK%20ICONS/RANK_DIAMOND.webp" />
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>
          </div>
        </div>

        <!--TOP CHAMPIONS-->
        <div class="container-top">
          <div class="container-description">
            <p>TOP CHAMPS</p>
            <p>
              The current best champions to use in High Elo.
            </p>
          </div>

          <div class="container-top-headers">
            <div class="table-header header-name">
              <p>PLAYER</p>
            </div>
            <div class="table-header header-attribute">
              <p>TIER</p>
              <p>KDA</p>
              <p>WR%</p>
            </div>
          </div>

          <!--TABLE DATA-->
          <div class="container-top-data">
            <div class="entity champion">
              <form class="header-name" method="get" action="top-champion">
                <input
                  type="submit"
                  id="champion-briar"
                  name="champion"
                  value="briar"
                  hidden
                />
                <label class="header-wrapper" for="champion-briar">
                  <img
                    src="assets/NEW%20FOLDER/BRIAR_ICON.png"
                  />
                  <p>Briar</p>
                </label>
              </form>

              <div class="header-attribute">
                <p>A</p>
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>

            <div class="entity champion">
              <form class="header-name" method="get" action="top-champion">
                <input
                        type="submit"
                        id="champion-khazix"
                        name="champion"
                        value="khazix"
                        hidden
                />
                <label class="header-wrapper" for="champion-khazix">
                  <img
                          src="assets/NEW%20FOLDER/KHA_ICON.png"
                  />
                  <p>Kha'Zix</p>
                </label>
              </form>

              <div class="header-attribute">
                <p>A</p>
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>

            <div class="entity champion">
              <form class="header-name" method="get" action="top-champion">
                <input
                        type="submit"
                        id="champion-anivia"
                        name="champion"
                        value="anivia"
                        hidden
                />
                <label class="header-wrapper" for="champion-anivia">
                  <img
                          src="assets/NEW%20FOLDER/ANIVIA_ICON.png"
                  />
                  <p>Anivia</p>
                </label>
              </form>

              <div class="header-attribute">
                <p>A</p>
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>

            <div class="entity champion">
              <form class="header-name" method="get" action="top-champion">
                <input
                        type="submit"
                        id="champion-varus"
                        name="champion"
                        value="varus"
                        hidden
                />
                <label class="header-wrapper" for="champion-varus">
                  <img
                          src="assets/NEW%20FOLDER/VARUS_ICON.png"
                  />
                  <p>Varus</p>
                </label>
              </form>

              <div class="header-attribute">
                <p>A</p>
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>

            <div class="entity champion">
              <form class="header-name" method="get" action="top-champion">
                <input
                        type="submit"
                        id="champion-janna"
                        name="champion"
                        value="janna"
                        hidden
                />
                <label class="header-wrapper" for="champion-janna">
                  <img
                          src="assets/NEW%20FOLDER/JANNA_ICON.png"
                  />
                  <p>Janna</p>
                </label>
              </form>

              <div class="header-attribute">
                <p>A</p>
                <p>1.15</p>
                <p>54%</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section id="whats-new-prompt">
        <h1>WHAT'S NEW</h1>
        <h1 hidden></h1>
      </section>

      <section id="home-news">
        <div class="container-news">
          <img src="assets/ICONS/PIC_Patchnotes.jpg" />
          <div class="container-news-content">
            <p class="news-tag">GAME UPDATES</p>
            <p class="news-title">PATCH 13.33 NOTES</p>
            <a class="news-prompt" href="">Learn more</a>
          </div>
        </div>
        <div class="container-news">
          <img src="assets/NEW%20FOLDER/BG_HWEI.jpg" />
          <div class="container-news-content">
            <p class="news-tag">NEW CHAMPION</p>
            <p class="news-title">HWEI: THE VISIONARY</p>
            <a class="news-prompt" href="">Learn more</a>
          </div>
        </div>
      </section>


      <!--Add Link-->
      <div id="sign-in-prompt">
        <p>
          Want to see your own personal stats?&nbsp;<a href="/login.jsp">Sign in</a
          >&nbsp;NOW!
        </p>
      </div>
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


