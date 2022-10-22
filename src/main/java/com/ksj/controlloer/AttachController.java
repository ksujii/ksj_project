package com.ksj.controlloer;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ksj.model.AttachVO;

@Controller
@RequestMapping("/attach")
public class AttachController {
	
	@PostMapping("/fileUpload")
	@ResponseBody
	public void fileUpload(MultipartFile[] uploadFile) {
		
		List<AttachVO> list = new ArrayList<AttachVO>();//첨부파일객체 리스트
		File uploadPath = new File("C:/storage",getFolder());
		System.out.println(getFolder());
		if(!uploadPath.exists()) {//업로드패스로 지정된 디렉토리가 존재하지 않으면
			uploadPath.mkdirs();//지정된 업로드 패스로 디렉토리 생성
		}
		
		//MultipartFile객체 : 업로드한 파일정보
		for(MultipartFile mf:uploadFile) {
			AttachVO attachVo = new AttachVO();
			String uploadFileName = mf.getOriginalFilename();//업로드한 파일이름 원본
			attachVo.setFileName(uploadFileName);//AttachVO객체에 파일 원본이름 저장
			UUID uuid =UUID.randomUUID();//파일이름중복을 막기위해 랜덤 문자열 생성
			uploadFileName=uuid.toString()+"_"+uploadFileName;
			
		 attachVo.setUuid(uploadFileName);//attachVo 객체에 uuid값 저장
		 attachVo.setUploadPath(uploadFileName);//attachVo객체에 업로드 폴더 저장
		 
		 
		
		 
			//C:/storage","/temp/d032-3-49s9s_new.jsp
			File saveFile = new File(uploadPath,uploadFileName);
			//이미지 여부 확인해서 AttachVO객체에 저장
			 if(checkImageType(saveFile)) {
				 System.out.println("이미지파일이네요");
				 attachVo.setFileType(true); //이미지파일이면 true로 변경
			 }
			 list.add(attachVo);//리스트에 추가
			try {
				mf.transferTo(saveFile);
			} catch (Exception e) {				
				e.printStackTrace();
			} 
			}//파일업로드 실행
		}

	private boolean checkImageType(File file) {		//image/jpg
		try {
			return Files.probeContentType(file.toPath()).startsWith("image");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	private String getFolder() {//2022-10-22
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); //날짜형식화메소드 format
		String dateString = sdf.format(new Date()); //format (현재날짜) 2022-10-22
		return dateString.replace("-",File.separator); //문자열 대치 "-"을 "\" 또는 "/"로 변경
		//리눅스계열 2022/10/22
		//윈도우: \10\22
		//File.separator 리눅스 = "/" 윈도우 ="/"
	}
}
	
