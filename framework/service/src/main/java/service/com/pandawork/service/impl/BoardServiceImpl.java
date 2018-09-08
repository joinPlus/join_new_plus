package com.pandawork.service.impl;

import com.pandawork.common.entity.Board;
import com.pandawork.common.utils.NFException;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.core.common.log.LogClerk;
import com.pandawork.core.common.util.Assert;
import com.pandawork.core.framework.dao.CommonDao;
import com.pandawork.mapper.BoardMapper;
import com.pandawork.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

    @Autowired
    BoardMapper boardMapper;

    @Autowired
    protected CommonDao commonDao;

    @Override
    public List<Board> listAll() throws SSException {
        List<Board> boardList = Collections.emptyList();
        try {
            boardList = boardMapper.listAll();
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.ListStudentAll, e);
        }
        return boardList;
    }
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void newBoard(Board board) throws SSException {
        if (Assert.isNull(board)) {
            return;
        }
        Assert.isNotNull(board.getContent(), NFException.BirthdayNotNull);
        Assert.isNotNull(board.getYear(), NFException.CollegeNotNull);
        Assert.isNotNull(board.getMonth(), NFException.CollegeNotNull);
        Assert.isNotNull(board.getDay(), NFException.CollegeNotNull);
        try {
            boardMapper.newBoard(board);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.SystemException, e);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public boolean delById(int id) throws SSException {

        try {
            return boardMapper.delById(id);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.DelStudentNull, e);
        }
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = {SSException.class, Exception.class, RuntimeException.class})
    public void update(Board board) throws SSException {
        try {
            boardMapper.update(board);
        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.UpdateStudentFailed, e);
        }

    }

    @Override
    public Board queryById(int id) throws SSException {
        try {
            return boardMapper.queryById(id);
        }catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.queryStudentByIdFailed, e);
        }

    }

    @Override
    public List<Board> queryByKeyword(String keyword) throws SSException {
        try {
            return  boardMapper.queryByKeyword(keyword);

        } catch (Exception e) {
            LogClerk.errLog.error(e);
            throw SSException.get(NFException.QueryByNameFailed, e);
        }
    }
}
