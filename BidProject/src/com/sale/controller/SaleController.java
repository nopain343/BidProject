package com.sale.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.category.service.CategoryService;
import com.category.vo.CategoryVO;
import com.category.vo.CatogoryPaging;
import com.sale.service.SaleService;
import com.sale.validate.FileValidator;


@Controller
public class SaleController {
	FileValidator fileValidator;
	
	@Autowired
	SaleService saleService;
	
	@Autowired
	   CategoryService categoryService;  
	
	@Autowired
	public SaleController(FileValidator fileValidator) {
		super();
		this.fileValidator = fileValidator;
	}
	
	
	@RequestMapping(value="/sale.sa", method=RequestMethod.GET)
	public String view(@ModelAttribute CategoryVO categoryVO) {
		return "sale/sale";
	}
	
	@RequestMapping(value="/saleUpload.sa", method=RequestMethod.POST)
	public ModelAndView insert(HttpServletRequest request, @ModelAttribute CategoryVO categoryVO, BindingResult result) {
//		System.out.println(categoryVO.getCat1());
		
		fileValidator.validate(categoryVO, result);
		if(result.hasErrors()) {
			return new ModelAndView("sale/sale");
		}
		
		MultipartFile file = categoryVO.getFile();
		String filename_original = file.getOriginalFilename();
		System.out.println(filename_original);
		String exc = filename_original.substring(filename_original.lastIndexOf(".")+1, filename_original.length());
		String filename_new = categoryVO.getCode() + "." + exc;
		System.out.println(filename_new);
		
		CategoryVO fileobj = new CategoryVO();
		fileobj.setFilename(filename_new);
		
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		try {
			inputStream = file.getInputStream();
			File newFile = new File("‎⁨users/jypark/workspace-sts-3.9.6.RELEASE/BidProject/web/resources/image/⁩" + filename_new);
			
//			String path = WebUtils.getRealPath(request.getSession().getServletContext(), "/resources/image");
//			File newFile = new File(path + "/" + filename_new);
//			System.out.println("업로드시 실제저장될 경로 : " + path);
			System.out.println("업로드 경로 : " + newFile);
			
//			System.out.println(newFile.getName());
		
			if(!newFile.exists()) {
				newFile.createNewFile();
			}
			
			outputStream = new FileOutputStream(newFile);
			
			int read = 0;
			byte[] b = new byte[(int)file.getSize()];
			
			while((read = inputStream.read(b)) != -1) {
				outputStream.write(b, 0, read);
			}
			
		}catch(IOException e) {
			e.printStackTrace();
		}finally {
			try {
				inputStream.close();
				outputStream.close();
			}catch(IOException e) {}
		}
		
		if(saleService.insert(categoryVO)) {
			CatogoryPaging.categorycheck = false;
			return new ModelAndView("view/main", "list", categoryService.categoryList(1));
		}else {
			return new ModelAndView("sale/sale");
		}
	}
	
	
}
