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
public class ChampionInfoServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("champion-top");
        String background = null,
                video = null,
                name = null,
                title = null,
                skill1 = null,
                skill2 = null,
                skill3 = null,
                skill4 = null;

        if (id.equals("briar")) {
            background = "assets/CHAMPIONS/BG_Briar.png";
            video = "https://www.youtube.com/embed/2QI2pfum47U?si=ctmNhv4jfu3rJfFg";
            name = "BRIAR";
            title = "BRIAR";
            skill1 = "assets/CHAMPIONS/BRIAR/BRIAR_SKILL1.png";
            skill2 = "assets/CHAMPIONS/BRIAR/BRIAR_SKILL2.png";
            skill3 = "assets/CHAMPIONS/BRIAR/BRIAR_SKILL3.png";
            skill4 = "assets/CHAMPIONS/BRIAR/BRIAR_ULTIMATE.png";
        }
        if (id.equals("khazix")) {
            background = "assets/CHAMPIONS/BG_KhaZix.png";
            video = "https://www.youtube.com/embed/jKLK9zFiVII?si=eJrstH5ZSkI30pB0";
            name = "KHA'ZIX";
            title = "KHA'ZIX";
            skill1 = "assets/CHAMPIONS/KHAZIX/KHA_SKILL1.png";
            skill2 = "assets/CHAMPIONS/KHAZIX/KHA_SKILL2.png";
            skill3 = "assets/CHAMPIONS/KHAZIX/KHA_SKILL3.png";
            skill4 = "assets/CHAMPIONS/KHAZIX/KHA_ULTIMATE.png";
        }
        if (id.equals("anivia")) {
            background = "assets/CHAMPIONS/BG_Anivia.png";
            video = "https://www.youtube.com/embed/8Syose1O568?si=nIFiDbAoUaMbRMaY";
            name = "ANIVIA";
            title = "ANIVIA";
            skill1 = "assets/CHAMPIONS/ANIVIA/ANIVIA_SKILL1.png";
            skill2 = "assets/CHAMPIONS/ANIVIA/ANIVIA_SKILL2.png";
            skill3 = "assets/CHAMPIONS/ANIVIA/ANIVIA_SKILL3.png";
            skill4 = "assets/CHAMPIONS/ANIVIA/ANIVIA_ULTIMATE.png";
        }
        if (id.equals("varus")) {
            background = "";
            video = "";
            name = "";
            title = "";
            skill1 = "";
            skill2 = "";
            skill3 = "";
            skill4 = "";
        }
        if (id.equals("janna")) {
            background = "";
            video = "";
            name = "";
            title = "";
            skill1 = "";
            skill2 = "";
            skill3 = "";
            skill4 = "";
        }
        
        request.setAttribute("background", background);
        request.setAttribute("video", video);
        request.setAttribute("name", name);
        request.setAttribute("title", title);
        request.setAttribute("skill1", skill1);
        request.setAttribute("skill2", skill2);
        request.setAttribute("skill3", skill3);
        request.setAttribute("skill4", skill4);

        request.getRequestDispatcher("/top-champ.jsp").forward(request, response);
 
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
