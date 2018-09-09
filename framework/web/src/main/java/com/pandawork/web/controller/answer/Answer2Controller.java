package com.pandawork.web.controller.answer;

import com.pandawork.common.entity.answer.Answer2;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.service.answer.Answer2Service;
import com.pandawork.web.spring.AbstractController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.script.ScriptContext;
import java.util.Collections;
import java.util.List;
/**
 * @author : kongyy
 * @time : 2018/8/3 11:01
 */

@Controller
@RequestMapping("/answer2")
public class Answer2Controller extends AbstractController{


    ScriptContext response;

    @Autowired
    Answer2Service answer2Service;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String answer2List(Model model) {
        try {
            List<Answer2> list = Collections.emptyList();
            list = answer2Service.listAllAnswer2();
            model.addAttribute("answer2List", list);
            //此即为foreach循环的item
            return "superKong";
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "del/{id}", method = RequestMethod.GET)
    public String delAnswer2(@PathVariable("id") int id) {
        try {
            answer2Service.delAnswer2(id);
            return "redirect:/answer2/list";
            //删除后还需重定向页面才可获取最新列表
        } catch (SSException e) {
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String toAddAnswer2(Model model){
        return "Konghome";
    }

    @RequestMapping(value ="/add", method = RequestMethod.POST)
    public String addAnswer2(Answer2 answer2,RedirectAttributes redirectAttributes){
        try {
            answer2Service.addAnswer2(answer2);
            redirectAttributes.addFlashAttribute("message", "添加成功！");
            return "redirect:/project/list";
        } catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "/toUpdate/{id}", method = RequestMethod.GET)
    public String toUpdateAnswer2(@PathVariable("id") int id, Model model){
        try{
            Answer2 answer2 ;
            answer2 = answer2Service.selectById(id);
            model.addAttribute("answer2", answer2);
            return "update";
        }catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    public String updateAnswer2(Answer2 answer2, @PathVariable("id") int id , Model model) {
        try {
            if(Assert.isNull(answer2)){
                return null;
            }
            answer2.setId(id);
            model.addAttribute("answer2",answer2);
            answer2Service.updateAnswer2(answer2);
            return "redirect:/answer2/list";
        } catch (SSException e){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }


    @RequestMapping(value ="/select",method = RequestMethod.POST)
    public String selectAnswer2(@RequestParam("keyword") String keyword, Model model) {
        try {
            List<Answer2> list = Collections.emptyList();
            list = answer2Service.select(keyword);
            model.addAttribute("list", list);
            return "select";
        } catch (SSException e ){
            LogClerk.errLog.error(e);
            sendErrMsg(e.getMessage());
            return ADMIN_SYS_ERR_PAGE;
        }
    }
}
