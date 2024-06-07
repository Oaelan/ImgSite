package org.hj.service;

import java.util.ArrayList;
import org.hj.mapper.MainMapper;
import org.hj.model.MainVO;
import org.hj.model.PageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {

    @Autowired
    MainMapper mm;
    
    @Override
    public int countBoard() {
    	return mm.countBoard();
    }
    
    @Override
    public ArrayList<MainVO> imgList(PageVO pvo) {
    	return mm.imgList(pvo);
    }
    
    @Override
    public MainVO showImgDetail(MainVO mvo) {
    	return mm.showImgDetail(mvo);
    }


    @Override
    public ArrayList <MainVO> extraImgs(MainVO mvo) {
    	return mm.extraImgs(mvo);
    };
}
