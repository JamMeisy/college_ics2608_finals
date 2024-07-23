/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jam
 */
public class ProfileInfoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("top-player");
        String background = null,
                video = null,
                name = null,
                title = null,
                team1 = null,
                team2 = null,
                team3 = null,
                team4 = null;
        
        if (id.equals(null)) {
            response.sendRedirect("home.jsp");
        }

        if (id.equals("zeus")) {
            background = "assets/NEW%20FOLDER/ZEUS_BG";
            video = "https://www.youtube.com/embed/jKLK9zFiVII?si=eJrstH5ZSkI30pB0";
            name = "SKT T1 ZEUS";
            title = "SKT T1 ZEUS";
            team1 = "assets/PROFILE/T1%20TEAMMATES/T1_KERIA_INFO";
            team2 = "assets/PROFILE/T1%20TEAMMATES/T1_GUMAYUSI_INFO";
            team3 = "assets/PROFILE/T1%20TEAMMATES/T1_ONER_INFO";
            team4 = "assets/PROFILE/T1%20TEAMMATES/T1_FAKER_INFO";
        }
        if (id.equals("oner")) {
            background = "assets/NEW%20FOLDER/ONER_BG";
            video = "https://www.youtube.com/embed/Py2_uyQl7ro?si=yAjXavv5U_IA-9b4";
            name = "SKT T1 ONER";
            title = "SKT T1 ONER";
            team1 = "assets/PROFILE/T1%20TEAMMATES/T1_KERIA_INFO";
            team2 = "assets/PROFILE/T1%20TEAMMATES/T1_GUMAYUSI_INFO";
            team3 = "assets/PROFILE/T1%20TEAMMATES/T1_ZEUS_INFO";
            team4 = "assets/PROFILE/T1%20TEAMMATES/T1_FAKER_INFO";
        }
        if (id.equals("faker")) {
            background = "assets/NEW%20FOLDER/FAKER_BG";
            video = "https://www.youtube.com/embed/jwLEJIoz-Yg?si=G6tM1RUEnHk7Sfy_";
            name = "SKT T1 FAKER";
            title = "SKT T1 FAKER";
            team1 = "assets/PROFILE/T1%20TEAMMATES/T1_KERIA_INFO";
            team2 = "assets/PROFILE/T1%20TEAMMATES/T1_GUMAYUSI_INFO";
            team3 = "assets/PROFILE/T1%20TEAMMATES/T1_ONER_INFO";
            team4 = "assets/PROFILE/T1%20TEAMMATES/T1_ZEUS_INFO";
        }
        if (id.equals("guma")) {
            background = "assets/NEW%20FOLDER/GUMAYUSI_BG";
            video = "https://www.youtube.com/embed/gn9Cf_AROVg?si=qx6hMDwCWnKayPM0";
            name = "SKT T1 GUMA";
            title = "SKT T1 GUMA";
            team1 = "assets/PROFILE/T1%20TEAMMATES/T1_KERIA_INFO";
            team2 = "assets/PROFILE/T1%20TEAMMATES/T1_ZEUS_INFO";
            team3 = "assets/PROFILE/T1%20TEAMMATES/T1_ONER_INFO";
            team4 = "assets/PROFILE/T1%20TEAMMATES/T1_FAKER_INFO";
        }
        if (id.equals("keria")) {
            background = "assets/NEW%20FOLDER/KERIA_BG";
            video = "https://www.youtube.com/embed/nGEPqmlhzUE?si=wQ7eRH6sKU2fWRmV";
            name = "SKT T1 KERIA";
            title = "SKT T1 KERIA";
            team1 = "assets/PROFILE/T1%20TEAMMATES/T1_ZEUS_INFO";
            team2 = "assets/PROFILE/T1%20TEAMMATES/T1_GUMAYUSI_INFO";
            team3 = "assets/PROFILE/T1%20TEAMMATES/T1_ONER_INFO";
            team4 = "assets/PROFILE/T1%20TEAMMATES/T1_FAKER_INFO";
        }


        request.setAttribute("background", background);
        request.setAttribute("video", video);
        request.setAttribute("name", name);
        request.setAttribute("title", title);
        request.setAttribute("team1", team1);
        request.setAttribute("team2", team2);
        request.setAttribute("team3", team3);
        request.setAttribute("team4", team4);

        request.getRequestDispatcher("/top-player.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
