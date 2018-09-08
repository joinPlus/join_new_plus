package com.pandawork.test;

import com.pandawork.common.entity.User;
import com.pandawork.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


/**
 * 用户登陆管理
 * 测试类
 * Created by 梁佳悦 on 2-18/7/31.
 */
public class UserServiceTest extends AbstractTestCase {

    @Autowired
    UserService userService;

    //测试用户列表
    @Test
    public void testListAllUser() throws Exception{
        System.out.print(userService.listAllUser());
        System.out.println("123");
    }

    //测试增加用户
    @Test
    public void testAddUser() throws Exception{
        User user = new User();
        user.setId(1);
        user.setUserName("ljy");
        user.setUserNumber(123);
        user.setUserDepartment("a");
        user.setUserGrade("a");
        user.setUserIntroduction("a");
        user.setUserPassword("a");
        user.setUserJob("a");
        userService.addUser(user);
        System.out.println(user);
    }

    //测试删除用户
    @Test
    public void teatDelUser() throws Exception{
        User user=new User();
        user.setId(1);
        userService.delUser(1);
        System.out.println("success!");
    }

    //测试更新用户
    @Test
    public void testUpdateUser() throws Exception{
        User user=new User();
        user.setId(1);
        user.setUserName("梁佳悦");
        user.setUserNumber(123);
        user.setUserDepartment("a");
        user.setUserGrade("a");
        user.setUserIntroduction("a");
        user.setUserPassword("a");
        user.setUserJob("a");
        userService.updateUser(user);
        System.out.println(user);
    }

    //根据用户名查询
    @Test
    public void testSerUser() throws Exception{
        User user=new User();
        user.setUserName("");
        System.out.println("userName");
    }
}