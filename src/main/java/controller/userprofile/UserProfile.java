package controller.userprofile;

import bean.User;
import db.DBProperties;
import services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet(name = "UserProfile", value = "/userProfile")
public class UserProfile extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       User userNull = new User(8, "Quynh Nhuw", "0819", "nhuw@gmail.com", "pass","","");
        request.getSession().setAttribute("auth", userNull);
        request.getRequestDispatcher("user-profile.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}