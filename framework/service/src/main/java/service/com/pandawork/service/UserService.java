package com.pandawork.service;

import com.pandawork.common.entity.User;

import java.util.List;

/**
 * 用户登陆管理service层
 * Created by 梁佳悦 on 2018/7/31.
 */
public interface UserService {
    /**
     * 用户列表
     * @return
     * @throws Exception
     */
    public List<User>listAllUser() throws Exception;

    /**
     * 展示各部门成员
     * @return
     * @throws Exception
     */
    public List<User>showAllMember()throws Exception;

    /**
     * 增加用户（即注册）
     * @return
     * @throws Exception
     */
    public void addUser(User user) throws Exception;

    /**
     * 删除用户
     * @return
     * @throws Exception
     */
    public void delUser(int id) throws Exception;

    /**
     * 修改用户
     * @return
     * @throws Exception
     */
    public void updateUser(User user) throws Exception;

    /**
     * 查询用户（根据用户名）
     * @return
     * @throws Exception
     */
    public boolean serUser(String userName) throws Exception;

    /**
     * 判断密码是否正确
     * @return
     * @throws Exception
     */
    public boolean pswIsTrue(String userName,String userPassword) throws Exception;

    /**
     * 上传头像
     */
    public void addImages(String userImages,String userName) throws Exception;
}