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

    @RequestMapping(value = "/list")
    public String activityList(Model model) {
        try {
            List<Activity> list = Collections.emptyList();
            list = activityService.listAll();
            model.addAttribute("activityList", list);//此即为foreach循环的item
            System.out.println(list);
            return "activityList";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "/toHome", method = RequestMethod.GET)
    public String toHomePage() {
        return "home";
    }
    @RequestMapping(value = "/toActivitymore", method = RequestMethod.GET)
    public String toActivitymore() {
        return "activitymore";
    }
    @RequestMapping(value = "/toBoardmore", method = RequestMethod.GET)
    public String toNewActivity1() {
        return "boardmore";
    }
    @RequestMapping(value="/toAdd",method = RequestMethod.GET)
    public String toAdd(){return  "activityadd";}
    @RequestMapping(value="/edit",method = RequestMethod.GET)
    public String toUpdate(){return  "activityupdate";}
    @RequestMapping("/add")
    public String addActivity(@RequestParam("state")String state, Activity activity, HttpSession session, MultipartFile uploadFile1, MultipartFile uploadFile2,MultipartFile uploadFile3,Model model) throws SSException {
        String filename1 = uploadFile1.getOriginalFilename();
        String filename2 = uploadFile2.getOriginalFilename();
        String filename3 = uploadFile3.getOriginalFilename();

        String leftPath = session.getServletContext().getRealPath("images");

        File file1 = new File(leftPath, filename1);
        File file2 = new File(leftPath, filename2);
        File file3 = new File(leftPath, filename3);


        activity.setImage1("/images/" + filename1);
        activity.setImage2("/images/" + filename2);
        activity.setImage3("/images/" + filename3);
        try {
            String stt = new String();
            System.out.println(state);
            if(state.equals("1")){
                stt = "yes";
            }else if (state.equals("0")){
                stt = "no";
            }else{
                stt = "不是0和1";
            }
            activity.setState(stt);
            uploadFile1.transferTo(file1);
            uploadFile2.transferTo(file2);
            uploadFile3.transferTo(file3);
        } catch (Exception e) {
            System.out.println("文件保存出错");
            e.printStackTrace();
        }
        activityService.newActivity(activity);
        model.addAttribute("image1", activity.getImage1());
        model.addAttribute("image2", activity.getImage2());
        model.addAttribute("image3", activity.getImage3());
        return "redirect:/activity/list";
    }
    @RequestMapping(value="/update/{id}", method = RequestMethod.POST)
    public String updateActivity(@RequestParam("state")String state,@PathVariable("id") int id,Activity activity, HttpSession session, MultipartFile uploadFile1,MultipartFile uploadFile2,MultipartFile uploadFile3, Model model) throws SSException {
        String filename1 = uploadFile1.getOriginalFilename();
        String filename2 = uploadFile2.getOriginalFilename();
        String filename3 = uploadFile3.getOriginalFilename();
        String leftPath = session.getServletContext().getRealPath("images");
        File file1 = new File(leftPath,filename1);
        File file2 = new File(leftPath,filename2);
        File file3 = new File(leftPath,filename3);
        activity.setImage1("/images/"+filename1);
        activity.setImage2("/images/"+filename2);
        activity.setImage3("/images/"+filename3);
        try {
            String stt = new String();
            System.out.println(state);
            if(state.equals("1")){
                stt = "yes";
            }else if (state.equals("0")){
                stt = "no";
            }else{
                stt = "不是0和1";
            }
            activity.setState(stt);
            uploadFile1.transferTo(file1);
            uploadFile2.transferTo(file2);
            uploadFile3.transferTo(file3);
        }
        catch (Exception e){
            System.out.println("文件保存出错");
            e.printStackTrace();
        }
        activityService.update(activity);
        model.addAttribute("image1",activity.getImage1());
        model.addAttribute("image2",activity.getImage2());
        model.addAttribute("image3",activity.getImage3());
        return "redirect:/activity/list";
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
