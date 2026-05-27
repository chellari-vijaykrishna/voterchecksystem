package com.voter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/checkEligibility")
public class EligibilityServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String ageStr = request.getParameter("age");
        String gender = request.getParameter("gender");

        int age = Integer.parseInt(ageStr);

        String status;
        String message;

        if (age >= 18) {
            status = "Eligible";
            message = "Congratulations! You are eligible to vote in India.";
        } else {
            status = "Not Eligible";
            message = "Sorry! You must be at least 18 years old to vote.";
        }

        request.setAttribute("name", name);
        request.setAttribute("age", age);
        request.setAttribute("gender", gender);
        request.setAttribute("status", status);
        request.setAttribute("message", message);

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
