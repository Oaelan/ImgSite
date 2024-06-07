package org.hj.controller;


import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.io.FilenameUtils;
import org.hj.model.LoginVO;
import org.hj.model.MainVO;
import org.hj.model.PageVO;
import org.hj.service.LoginService;
import org.hj.service.MainService;
import org.hj.service.uploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.AlternativeJdkIdGenerator;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;
import com.mysql.cj.Session;

@Controller
public class MainController {
	
	@Autowired
	MainService ms;
	
	@Autowired
	private LoginService ls;

	@Autowired
	private uploadService us;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String imgList(PageVO pvo, Model model
			, @RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage, HttpSession session) {
		
		//헤더 부분에 로그인 전/후  버튼 변경!!!!!!!!!!!!!!!
		// search , upload , detail 페이지의 컨트롤러에도 이값은 계속 유지 시켜줘야함!!!
		boolean isLogin = (session.getAttribute("loginId")!=null);
		System.out.println(isLogin);
		model.addAttribute("isLogin",isLogin);
				
		int total = ms.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "32";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "32";
		}
		pvo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("page", pvo);
		model.addAttribute("fl", ms.imgList(pvo));
		return "imgsite/main";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("로그인 페이지 가기");
		return "imgsite/login";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginSuccess(HttpSession session, LoginVO lvo) {
		System.out.println(lvo);
		session.setAttribute("loginId", (ls.login(lvo)).getId());

		if (session.getAttribute("loginId")==null) {
			System.out.println("아이디 없어서 다시 로그인 페이지");
			return "imgsite/login";
		} 
		else {
			System.out.println("로그인 성공해서 메인으로");
			return "redirect:/main";	
		}
	}
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("loginId");
		return "redirect:/main";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "imgsite/join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinSuccess(LoginVO lvo) {
		System.out.println("회원가입 정보 넣기");
		ls.joinSuccess(lvo);
		return "imgsite/login";
	}
	
	@GetMapping("/upload")
	public String goUpload(HttpSession session, Model model) {
		//헤더 부분에 로그인 전/후  버튼 변경!!!!!!!!!!!!!!!
		// search , upload , detail 페이지의 컨트롤러에도 이값은 계속 유지 시켜줘야함!!!
		boolean isLogin = (session.getAttribute("loginId")!=null);
		System.out.println("업로드 화면 이동");
		model.addAttribute("isLogin",isLogin);
		return "imgsite/upload";
	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String uploadImage(
			@ModelAttribute("mvo") MainVO mvo,  
			@RequestParam("img_kind") String imgKind,
            @RequestParam("tag") String tag,
            HttpServletRequest request,
            HttpSession session)  throws Exception{
		System.out.println("컨트롤러 실행");
		String filename = null;
		String filepath = null;
		String writer = null;
		MultipartFile file = mvo.getUploadFile();
		
		if (!file.isEmpty()) {
			//파일 실제 이름
			String originalFileName = file.getOriginalFilename();
			//파일 확장자
			String ext =FilenameUtils.getExtension(originalFileName);
			
			UUID uuid = UUID.randomUUID();
			//랜덤값+ 파일 실제 이름+파일 확장자로 파일명 설정
			filename = UUID.randomUUID().toString() + "_" + originalFileName;
			filepath = "d:\\upload\\allImg\\"+filename;
			file.transferTo(new File(filepath));
			writer = (String) session.getAttribute("loginId");
		}
		
		mvo.setFilename(filename);
		mvo.setFilePath(filepath);
		mvo.setWriter(writer);
		mvo.setImg_kind(imgKind);
        mvo.setTags(tag);
		System.out.println("파일명: fileName");
		us.uploadImage(mvo);
		
		
		/*us.uploadImage(mvo);
		System.out.println("이미지 업로드 완료 후 메인으로");*/
		return "redirect:/main";
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(HttpSession session, Model model) {
		//헤더 부분에 로그인 전/후  버튼 변경!!!!!!!!!!!!!!!
		// search , upload , detail 페이지의 컨트롤러에도 이값은 계속 유지 시켜줘야함!!!
		boolean isLogin = (session.getAttribute("loginId")!=null);
		System.out.println("업로드 화면 이동");
		model.addAttribute("isLogin",isLogin);
		return "imgsite/mypage";
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.POST)
	public String mypageSave(HttpSession session, Model model) {
		//헤더 부분에 로그인 전/후  버튼 변경!!!!!!!!!!!!!!!
		// search , upload , detail 페이지의 컨트롤러에도 이값은 계속 유지 시켜줘야함!!!
		boolean isLogin = (session.getAttribute("loginId")!=null);
		System.out.println("업로드 저장");
		model.addAttribute("isLogin",isLogin);
		
		
		return "redirect:/mypage";
	}
	
	@GetMapping("/imgdetail")
	public String goImgDetail(MainVO mvo, Model model,HttpSession session) {
		boolean isLogin = (session.getAttribute("loginId")!=null);
		model.addAttribute("isLogin",isLogin);	

		// 노출되는 메인 이미지
		model.addAttribute("detailImg",ms.showImgDetail(mvo));	

		// 노출되는 나머지 이미지
		model.addAttribute("extraImags",ms.extraImgs(mvo));
		return "imgsite/imgDetail";
	}
}
