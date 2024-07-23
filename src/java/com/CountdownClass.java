/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author Jam
 */
public class CountdownClass implements ServletContextListener {
    
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();

        // Set the target date in the format "yyyy-MM-dd"
        String targetDateString = "2024-1-20";

        // Parse the target date string to a Date object
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date targetDate;
        try {
            targetDate = dateFormat.parse(targetDateString);
        } catch (ParseException e) {
            System.err.println("Error parsing target date: " + e.getMessage());
            return;
        }

        // Get the current date
        Date currentDate = new Date();

        // Calculate the difference in milliseconds
        long timeDifferenceInMillis = targetDate.getTime() - currentDate.getTime();

        // Calculate the difference in days
        long daysLeft = TimeUnit.MILLISECONDS.toDays(timeDifferenceInMillis);

        context.setAttribute("countdown", daysLeft);
    }
    
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
