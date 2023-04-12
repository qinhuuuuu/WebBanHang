package services;

import bean.Category;
import bean.LineItem;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class LineItemService {
    private static LineItemService instance;

    private LineItemService() {

    }

    public static LineItemService getInstance() {
        if (instance == null) {
            instance = new LineItemService();
        }
        return instance;
    }

    public List<LineItem> getListLineItemByOrderId(int id){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select li.id, li.product_id, li.quantity from line_item li join order_line ol on li.id = ol.line_item_id WHERE order_id = ?")
                    .bind(0, id)
                    .mapToBean(LineItem.class)
                    .stream().collect(Collectors.toList());
        });
    }
}