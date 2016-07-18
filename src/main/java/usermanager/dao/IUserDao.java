package usermanager.dao;


import org.springframework.beans.support.PagedListHolder;
import usermanager.model.User;

import java.util.List;

public interface IUserDao {
    User getUserById(int id);
    void removeUser(int id);
    PagedListHolder<User> listUsers(int page);
    List<User> getUsersByName(String userName);
    void addUser(User user);









}
