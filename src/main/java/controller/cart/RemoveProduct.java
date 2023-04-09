package controller.cart;

import bean.Cart;
import bean.Format;
import bean.Product;
import bean.User;
import services.CartService;
import services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveProduct", value = "/cart/removeProduct")
public class RemoveProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idProduct = Integer.parseInt(request.getParameter("idProduct"));
        User user = (User) request.getSession().getAttribute("auth");
        Product product = ProductService.getInstance().getProductById(idProduct);
        user.setListCartItem(Cart.removeItemCart(user.getListCartItem(), product));

        response.getWriter().println(Format.format(Cart.totalPrice(user.getListCartItem())));
        response.getWriter().println(Format.format(Cart.totalPriceSale(user.getListCartItem())));
        response.getWriter().println(Format.format(Cart.total(user.getListCartItem())));
        response.getWriter().println(Cart.sumQuantity(user.getListCartItem()));

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
