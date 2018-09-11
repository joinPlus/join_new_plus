package com.pandawork.web.controller;

import com.pandawork.common.entity.Freshman;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.service.FreshmanService;
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
import java.awt.*;
import java.io.File;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/entry")
public class FreshmanController extends AbstractController{

    @Autowired
    FreshmanService freshmanService;

    @RequestMapping("/entry")
    public String toEntry(){
        return "entry";
    }

    @RequestMapping("/control")
    public String toControl(){
        return "entryControl";
    }

    @RequestMapping("/listAll")
    public String listAllFreshman(Model model) {
        try {
            List<Freshman> freshmanList = Collections.emptyList();
            freshmanList = freshmanService.listAllFreshman();
            model.addAttribute("freshmanList", freshmanList);
            return "entryControl";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

//    @RequestMapping(value = "/addFreshman",method = RequestMethod.POST)
//    public String addFreshman(Freshman freshman,RedirectAttributes redirectAttributes){
//        try {
//            freshmanService.addFreshman(freshman);
//            redirectAttributes.addFlashAttribute("message", "添加成功！");
//            return "entry";
//        } catch (SSException e){
//            LogClerk.errLog.error(e);
//            sendErrMsg(e.getMessage());
//            return ADMIN_SYS_ERR_PAGE;
//        }
//    }

    @RequestMapping(value = "/addFreshman",method = RequestMethod.POST)
    public String addFreshman(Freshman freshman, RedirectAttributes redirectAttributes,HttpSession session,MultipartFile uploadFile,Model model) throws Exception{
        String filename = uploadFile.getOriginalFilename();
        String leftPath = session.getServletContext().getRealPath("images");
        File file = new File(leftPath,filename);
        freshman.setPhoto("/images/"+filename);
        try {
            uploadFile.transferTo(file);
        }
        catch (Exception e){
            System.out.println("文件保存出错");
            e.printStackTrace();
        }
        freshmanService.addFreshman(freshman);
        redirectAttributes.addFlashAttribute("myId",freshmanService.getIdByNumber(freshman.getNumber()).getId());
        return "redirect:/entry/entry";
    }

    @RequestMapping(value = "/deleteFreshman/{id}",method = RequestMethod.GET)
    public String deleteFreshman(@PathVariable("id") int id){
        try {
            freshmanService.deleteFreshman(id);
            return "redirect:/entry/listAll";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping("/searchById/{id}")
    public String searchById(Model model,@PathVariable("id") int id){
        try {
            model.addAttribute("freshman", freshmanService.getFreshman(id));
            String yon = new String();
            if(freshmanService.getFreshman(id).getYon() == 1){
                yon = "是";
            }else if(freshmanService.getFreshman(id).getYon() == 0){
                yon = "否";
            }
            model.addAttribute("yon",yon);
            return "entryInfo";
        } catch (SSException e ){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping("/getById/{id}")
    public String getById(Model model,@PathVariable("id") int id,@RequestParam("examine") String pass){
        try {
            Freshman f = new Freshman();
            f = freshmanService.getFreshman(id);
            f.setPass(pass);
            freshmanService.updateFreshman(f);
            return "redirect:/entry/listAll";
        } catch (SSException e ){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping("/searchVolunteer")
    public String searchVolunteer(Model model,@RequestParam("volunteer") String dpm){
        try {
            List<Freshman> list = Collections.emptyList();
            List<Freshman> freshmanList = Collections.emptyList();
            freshmanList = freshmanService.searchVolunteer1(dpm);
            list = freshmanService.searchVolunteer2(dpm);
            freshmanList.addAll(list);
            model.addAttribute("freshmanList",freshmanList);
            return "entryControl";
        } catch (SSException e ){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String update(Freshman freshman, @PathVariable("id") int id) {
        try {
            freshmanService.updateFreshman(freshman);
            return "entry";
        } catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}

