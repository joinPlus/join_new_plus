package com.pandawork.service.impl;

import com.pandawork.common.entity.User;
import com.pandawork.common.utils.userException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.core.framework.dao.CommonDao;
import com.pandawork.mapper.UserMapper;
import com.pandawork.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import java.util.Collections;
import java.util.List;

/**
 * 用户登陆管理service层的实现类
 * Created by 梁佳悦 on 2018/7/31.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;
    @Autowired
    CommonDao commonDao;

    /**
     * 用户列表
     */
    @Override
    public List<User>listAllUser()throws SSException{
        List<User>listAllUser = Collections.emptyList();
        try {
            listAllUser = userMapper.listAllUser();
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(userException.ListUserAll, e);
        }
        return listAllUser;
    }

    /**
     * 展示各部门成员
     */
    @Override
    public List<User>showAllMember()throws Exception{
        List<User>showAllMember = Collections.emptyList();
        try {
            showAllMember = userMapper.showAllMember();
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
        return showAllMember;
    }

    /**
     * 增加用户
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void addUser(User user)throws SSException{
        //判空 查重
        if (Assert.isNull(user)) {
            return;
        }
        Assert.isNotNull(user.getUserName(),userException.UserNameNotNull);
        Assert.isNotNull(user.getUserPassword(), userException.PasswordNotNull);
        try {
            userMapper.addUser(user);
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(userException.SystemException, e);
        }
    }

    /**
     * 删除用户
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void delUser(int id) throws SSException{
        try {
            userMapper.delUser(id);
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(userException.DelUserFail,e);
        }
    }

    /**
     * 修改用户
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void updateUser(User user)throws SSException{
        try{
            userMapper.updateUser(user);
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(userException.UpdateUserFail,e);
        }
    }

    /**
     * 查询用户（根据用户名）
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean serUser(String userName)throws SSException{
        boolean flag = false;
        try {
            if(userMapper.serUser(userName)!=null)
            flag = true;
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(userException.SerUserFail,e);
        }
        return flag;
    }


    /**
     * 判断密码是否正确
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean pswIsTrue(String userName,String userPassword)throws SSException{
        boolean flag = false;
        try {
            List<User> list = userMapper.pswIsTrue(userName,userPassword);
            if(list.size()!=0)
                flag = true;
        }catch (Exception e){
            LogClerk.errLog.error(e);
            throw SSException.get(userException.PasswordIsWrong,e);
        }
        return flag;
    }


    /**
     * 上传头像
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void addImages(String userImages,String userName)throws Exception{
        try {
            userMapper.addImages(userImages,userName);
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
    }
}