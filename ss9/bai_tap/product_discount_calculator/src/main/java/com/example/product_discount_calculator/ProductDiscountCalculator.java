package com.example.product_discount_calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountCalculator", value = "/display-discount")
public class ProductDiscountCalculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("percent"));

        float discountAmount = price * discount / 100;
        float discountPrice = price - discountAmount;

        request.setAttribute("Amount" , discountAmount);
        request.setAttribute("Price" , discountPrice);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("discount_amount.jsp");
        requestDispatcher.forward(request,response);
    }
}