package com.pandawork.test;

import com.pandawork.common.entity.Activity;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.ActivityService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class ActivityServiceTest  extends  AbstractTestCase{
    @Autowired
    ActivityService activityService;
    @Test
    public void testListAll() throws SSException{
        System.out.println(activityService.listAll());

    }
    @Test
    public void testNewActivity() throws SSException{
        Activity activity=new Activity();
        activity.setContent("233");
        activity.setImage("111");
        activity.setTitle("666");
        activityService.newActivity(activity);
    }
    @Test
    public  void testDelById() throws SSException{

        activityService.delById(2);
    }
    @Test
    public void testUpdate() throws SSException{
        Activity activity=new Activity();
        activity.setId(1);
        activity.setTitle("哈");
        activity.setImage("0");
        activity.setContent("6");
        activityService.update(activity);

    }
    @Test
    public  void testQueryById() throws SSException{
        Activity activity=activityService.queryById(3);
        System.out.println(activity.toString());
    }

}
