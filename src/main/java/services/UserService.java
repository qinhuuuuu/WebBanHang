package services;

import bean.Product;
import bean.User;
import db.JDBIConnector;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.stream.Collectors;

public class UserService {

    private static UserService instance;

    private UserService() {

    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    public List<User> getListUser() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT user_id, full_name, email, phone_number, pass, varieties, avatar  FROM user").mapToBean(User.class).stream().collect(Collectors.toList());
        });
    }

    public User checkLogin(String userName, String password){
        List<User> users = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select user_id, full_name, email, phone_number, pass, varieties, avatar from user where full_name =?")
                        .bind(0, userName)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if(users.size() != 1) return null;
        User user = users.get(0);
        System.out.println(12);
        if(!user.getPass().equals((password))
                || !user.getFullName().equals(userName)){
            return null;
        }
        return user;
    }

    public String hashPassword(String password){
        try{
            MessageDigest sha256 = null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e){
            return null;
        }
    }

    public static void main(String[] args) {
        System.out.println(UserService.getInstance().getListUser());
    }


}