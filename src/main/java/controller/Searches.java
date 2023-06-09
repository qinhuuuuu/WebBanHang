package controller;

import bean.Banner;
import bean.Category;
import bean.Product;
import services.CaterogyService;
import services.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Searches", value = "/searches")
public class Searches extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int kind = 0;
        int page = 1;
        String sort = "a-z";
        String group = request.getParameter("groups");
        String search = request.getParameter("search");
        int size = ProductService.getInstance().getCountProduct(kind, group) / 15;
        int count = ProductService.getInstance().getCountProduct(kind, group) % 15 > 0 ? size + 1 : size;
        List<Product> listProduct = ProductService.getInstance().getListProductInSearch(search);// danh sach san pham theo trang
//        List<Banner> listBanner = BannerService.getInstance().getListBanner();
//        List<Product> listSearch = ProductService.getInstance().getListProductInSearch(search);

        request.setAttribute("listProduct", listProduct);
        request.setAttribute("kind", kind);
        request.setAttribute("page", page);
        request.setAttribute("sort", sort);
        request.setAttribute("count", count);
        request.setAttribute("group", group);
//        request.setAttribute("listBanner",listBanner);
//        request.setAttribute("txName", search);
        List<Category> categories = CaterogyService.getInstance().getListCategory(kind);
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("list-product.jsp").forward(request, response);
//        response.sendRedirect("");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
