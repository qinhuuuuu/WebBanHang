package controller.admins;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "GeneralManager", value = "/generalManager")
public class GeneralManager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = "Quản lý chung";
//        List<Banner> bannerList = BannerService.getInstance().getListBanner();
//        List<PaCategory> paCategoryList = PaCategoryService.getInstance().getListCategory();
//        List<Category> categoryList = CaterogyService.getInstance().getListCategoryAll();
//        request.setAttribute("listBanner",bannerList);
//        request.setAttribute("listPaCategory",paCategoryList);
//        request.setAttribute("listCategory",categoryList);
        request.setAttribute("name", name);
        request.getRequestDispatcher("general-manager.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
