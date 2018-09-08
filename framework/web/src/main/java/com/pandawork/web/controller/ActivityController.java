package com.pandawork.web.controller;

import com.pandawork.common.entity.Activity;
import com.pandawork.service.ActivityService;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.web.spring.AbstractController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/activity")
public class ActivityController extends AbstractController {
    @Autowired
    ActivityService activityService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String activityList(Model model) {
        try {
            List<Activity> list = Collections.emptyList();
            list = activityService.listAll();
            model.addAttribute("activityList", list);//此即为foreach循环的item
            return "activityList";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "/toAdd", method = RequestMethod.GET)
    public String toNewActivity1() {
        return "activityadd";
    }

    @RequestMapping("/add")
    public String addActivity(Activity activity, HttpSession session, MultipartFile uploadFile, Model model) throws SSException {
        String filename = uploadFile.getOriginalFilename();
        String leftPath = session.getServletContext().getRealPath("images");
        File file = new File(leftPath, filename);
        activity.setImage("/images/" + filename);
        try {
            uploadFile.transferTo(file);
        } catch (Exception e) {
            System.out.println("文件保存出错");
            e.printStackTrace();
        }
        activityService.newActivity(activity);
        model.addAttribute("image", activity.getImage());
        return "activitysuccess";
    }
    @RequestMapping(value="/update/{id}", method = RequestMethod.POST)
    public String updateActivity(@PathVariable("id") int id,Activity activity, HttpSession session, MultipartFile uploadFile, Model model) throws SSException {
        String filename = uploadFile.getOriginalFilename();
        String leftPath = session.getServletContext().getRealPath("images");
        File file = new File(leftPath,filename);
        activity.setImage("/images/"+filename);
        try {
            uploadFile.transferTo(file);
        }
        catch (Exception e){
            System.out.println("文件保存出错");
            e.printStackTrace();
        }
        activityService.update(activity);
        model.addAttribute("image",activity.getImage());
        return "activitysuccess1";
    }
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String toNewActivity(@PathVariable("id") int id,Model model,Activity activity){
        try{
            activity=activityService.queryById(id);
            model.addAttribute("activity",activity);
            return "activityupdate";
        }catch(SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
        try {
            activityService.delById(id);
            return "redirect:/activity/list";//删除后还需重定向页面才可获取最新列表
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

}
