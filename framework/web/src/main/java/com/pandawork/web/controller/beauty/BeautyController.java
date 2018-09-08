package com.pandawork.web.controller.beauty;

import com.pandawork.common.entity.beauty.Beauty;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.service.BeautyService;
import com.pandawork.web.spring.AbstractController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Collections;
import java.util.List;

/**
 * @Author:liangll
 * @Description:
 * @Date: 0:41 2018/8/4
 */
@Controller
@RequestMapping("/beauty")
public class BeautyController extends AbstractController{

    @Autowired
    BeautyService beautyService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String beautyList(Model model) {
        try {
            List<Beauty> list = Collections.emptyList();
            list = beautyService.listAllBeauty();
            //此即为foreach循环的item
            model.addAttribute("beautyList", list);
            return "home_beauty";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping("/add")
    public String addBeauty(Beauty beauty, HttpSession session, MultipartFile uploadFile) throws SSException {
        String filename = uploadFile.getOriginalFilename();
        String leftPath = session.getServletContext().getRealPath("images");
        File file = new File(leftPath,filename);
        beauty.setPath("/images/" + filename);
        try {
            uploadFile.transferTo(file);
        } catch (Exception e){
            System.out.println("文件保存出错");
            e.printStackTrace();
        }
        beautyService.addBeauty(beauty);
        return "redirect:/beauty/list";
    }

    @RequestMapping(value = "del/{id}", method = RequestMethod.GET)
    public String delBeauty(@PathVariable("id") int id) {
        try {
            beautyService.delBeauty(id);
            //删除后还需重定向页面才可获取最新列表
            return "redirect:/beauty/list";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "/toUpdate/{id}",method = RequestMethod.GET)
    public String toUpdate(@PathVariable("id") int id , Model model){
        try{
            Beauty beauty = new Beauty();
            beauty = beautyService.selectById(id);
            model.addAttribute("beauty",beauty);
            return "update_beauty";
        }catch(SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "/update/{id}",method = RequestMethod.POST)
    public String update(Beauty beauty ,@PathVariable("id")int id, Model model){
        try{
            if(Assert.isNull(beauty)){
                return null;
            }
            beauty.setId(id);
            model.addAttribute("beauty",beauty);
            beautyService.updateBeauty(beauty);
            return "redirect:/beauty/list";
        }catch(SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}