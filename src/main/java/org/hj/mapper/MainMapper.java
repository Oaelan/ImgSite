package org.hj.mapper;

import java.util.ArrayList;
import org.hj.model.MainVO;
import org.hj.model.PageVO;

public interface MainMapper {
	
	public int countBoard();

	public ArrayList<MainVO> imgList(PageVO pvo);
   
	public MainVO showImgDetail(MainVO mvo);

    public ArrayList<MainVO> extraImgs(MainVO mvo);
}
