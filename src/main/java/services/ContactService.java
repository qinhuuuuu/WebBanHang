package services;

import bean.Contact;
import db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ContactService {
    private static ContactService instance;

    private ContactService() {

    }

    public static ContactService getInstance() {
        if (instance == null) {
            instance = new ContactService();
        }
        return instance;
    }

    public List<Contact> getListContact() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT id, name, content FROM contact").mapToBean(Contact.class).stream().collect(Collectors.toList());
        });
    }

    public int nextID() {
        return 1 + JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT MAX(`id`) as numberContact FROM contact").mapTo(Integer.class).one();
        });
    }

    public void addContact(String name, String content) {
        JDBIConnector.get().withHandle(handle -> {
            return handle.createUpdate("INSERT INTO contact VALUES (?,?,?)")
                    .bind(0, nextID())
                    .bind(1, name)
                    .bind(2, content)
                    .execute();
        });
    }

    public static void main(String[] args) {
        System.out.println(getInstance().nextID());
//        getInstance().addContact("dang","trang wweb oke");
    }
}
