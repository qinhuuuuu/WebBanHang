package controller.userprofile;

import bean.Order;
import bean.OrderDetail;
import bean.User;
import services.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "OrderList", value = "/userprofile/OrderList")
public class OrderList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("auth");

//        List<Order> orders = (List<Order>) request.getAttribute("orders");
//        for (Order order : orders) {
//
//            List<OrderDetail> orderDetails = OrderService.getInstance().getOderListByOrderId(order);
//        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
