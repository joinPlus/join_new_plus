package com.pandawork.service;

import com.pandawork.common.entity.TongGao;

import java.io.File;
import java.util.List;

public interface TongGaoService {
    List<TongGao> getAllTongGao();
    boolean addTongGao(TongGao tg);
    File downLoad(int id);
}
