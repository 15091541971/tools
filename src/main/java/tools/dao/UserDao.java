package tools.dao;

import tools.model.User;

public interface UserDao {
public  int addUser(User user);
public User selectUser(String userId);
public int updateUserStatus(User user);
}
