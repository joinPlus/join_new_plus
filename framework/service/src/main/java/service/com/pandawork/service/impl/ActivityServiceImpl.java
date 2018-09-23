package com.pandawork.service.impl;

import com.pandawork.common.entity.Activity;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.core.framework.dao.CommonDao;
import com.pandawork.mapper.ActivityMapper;
import com.pandawork.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;
@Service("activityService")
public class ActivityServiceImpl implements ActivityService{
    @Autowired
    ActivityMapper activityMapper;

    @Autowired
    protected CommonDao commonDao;
    @Override
    public List<Activity> listAll() throws SSException {
        List<Activity> activityList = Collections.emptyList();
        try {
            activityList = activityMapper.listAll();
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.ListStudentAll, e);
        }
        return activityList;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void newActivity(Activity activity) throws SSException {
        if (Assert.isNull(activity)) {
            return;
        }
        Assert.isNotNull(activity.getContent(), NFException.BirthdayNotNull);
        Assert.isNotNull(activity.getTitle(), NFException.CollegeNotNull);
        Assert.isNotNull(activity.getImage1(), NFException.CollegeNotNull);
        try {
            activityMapper.newActivity(activity);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.SystemException, e);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean delById(int id) throws SSException {

        try {
            return activityMapper.delById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.DelStudentNull, e);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void update(Activity activity) throws SSException {
        try {
            activityMapper.update(activity);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.UpdateStudentFailed, e);
        }

    }

    @Override
    public Activity queryById(int id) throws SSException {
        try {
            return  activityMapper.queryById(id);
        }catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.queryStudentByIdFailed, e);
        }

    }



}

