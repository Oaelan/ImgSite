package org.hj.service;

import java.util.ArrayList;

import org.hj.model.PageVO;
import org.hj.model.MainVO;

public interface MainService {
	
	public int countBoard();

	ArrayList<MainVO> imgList(PageVO pvo) ;
	
	MainVO showImgDetail(MainVO mvo);

	public ArrayList<MainVO> extraImgs(MainVO mvo);
	
    
}
