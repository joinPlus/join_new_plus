package com.pandawork.web.controller;

import com.pandawork.common.entity.User;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.service.UserService;
import com.pandawork.web.spring.AbstractController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Collections;
import java.util.List;

/**
 * 用户登陆controller层
 * Created by 梁佳悦 on 2018/7/31.
 */
@Controller
@RequestMapping("/user")
public class UserController extends AbstractController {

    @Autowired
    UserService userService;

    //跳转到主页面
    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String toHome(){
        return "log_in";
    }

    //遍历
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String listAllUser(Model model){
        try {
            List<User>list= Collections.emptyList();
            list=userService.listAllUser();
            model.addAttribute("listAllUser",list);
            return "DepartmentMember";
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
        return "log_in";
    }

    //展示产品部
    @RequestMapping(value = "/show1",method = RequestMethod.GET)
    public String showAllMember1(Model model){
        try {
            List<User>show1= Collections.emptyList();
            show1=userService.showAllMember1();
            model.addAttribute("showAllMember1",show1);
            return "DMPWW";
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
        return "log_in";
    }

    //展示前端部
    @RequestMapping(value = "/show2",method = RequestMethod.GET)
    public String showAllMember2(Model model){
        try {
            List<User>show2= Collections.emptyList();
            show2=userService.showAllMember2();
            model.addAttribute("showAllMember2",show2);
            return "DMFWW";
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
        return "log_in";
    }

    //展示后端部
    @RequestMapping(value = "/show3",method = RequestMethod.GET)
    public String showAllMember3(Model model){
        try {
            List<User>show3= Collections.emptyList();
            show3=userService.showAllMember3();
            model.addAttribute("showAllMember3",show3);
            return "DMBWW";
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
        return "log_in";
    }

    //增加跳转页面
    @RequestMapping(value = "/toAdd",method = RequestMethod.GET)
    public String toAdd(){
        return "DMadd";
    }

    //增加页面
    @RequestMapping(value = "/addUser",method = RequestMethod.POST)
    public String addUser(User user){
        try {
            userService.addUser(user);
            return "redirect:/user/list";
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
        return "redirect:/user/list";
    }

    //删除user
    @RequestMapping(value = "/delUser",method = RequestMethod.GET)
    public String delUser(int id){
        try {
            userService.delUser(id);
//            return "redirect:/user/list";
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
        return "redirect:/user/list";
    }

    //修改跳转页面
    @RequestMapping(value = "/toUpdate",method = RequestMethod.GET)
    public String toUpdate(){
        return "DMupdate";
    }

    //修改页面
    @RequestMapping(value = "/updateUser",method = RequestMethod.POST)
    public String updateUser(User user){
        try {
            userService.updateUser(user);
//            return "redirect:/user/list";
        }catch (Exception e){
            LogClerk.errLog.error(e);
        }
        return "redirect:/user/list";
    }

    //查询页面
    @RequestMapping(value = "/serUser",method = RequestMethod.POST)
    public String serUser(@RequestParam String userName, String userPassword)throws Exception{
//        try {
            if (userService.serUser(userName))
                if(userService.pswIsTrue(userName,userPassword))
            return "redirect:/user/list";
//        }catch (Exception e){
//            LogClerk.errLog.error(e);
//        }
        return "log_in";
    }


    //上传头像
    @RequestMapping(value = "/addImages",method = RequestMethod.POST)
    public String addImages(String userName,User user, HttpSession session, MultipartFile uploadFile, Model model)throws Exception{
                String filename = uploadFile.getOriginalFilename();
                String leftPath = session.getServletContext().getRealPath("images");
                File file = new File(leftPath,filename);
                user.setUserName(userName);
                user.setUserImage("/images/"+filename);
                try {
                    uploadFile.transferTo(file);
                }
                catch (Exception e){
                    System.out.println("文件保存出错");
                    e.printStackTrace();
                }
                userService.addImages(user.getUserImage(),user.getUserName());
                model.addAttribute("userImages",user.getUserImage());
                return "111";
            }

    //退出登陆
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request,HttpServletResponse response) throws Exception {
        try {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            if (user != null) {
                session.removeAttribute("user");
                // 设置提示信息
//                request.setAttribute("info2", "退出登陆");
            }
            request.getRequestDispatcher("home").forward(request, response);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
        }
        return "neiwangljy";
    }
}
