package com.sunxiaofei.lab1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ElCollectionServlet", value = "/elc")
public class ElCollectionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Array
        String[] firstName = {"Bill", "Scott", "Larry", "Sun"};
        //ArrayList
        List<String> lastName = new ArrayList<>();
        lastName.add("Ellison");
        lastName.add("Gates");
        lastName.add("McNealy");
        lastName.add("Xiaofei");
        //Map
        Map<String, String> company = new HashMap<>();
        company.put("Ellison", "Sun");
        company.put("Gates", "IBM");
        company.put("McNealy", "Microsoft");
        company.put("Xiaofei", "Ecjtu");//key value
        //set as request attribute
        request.setAttribute("fName", firstName);
        request.setAttribute("lName", lastName);
        request.setAttribute("company", company);
        //forward
        request.getRequestDispatcher("elcollection.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
