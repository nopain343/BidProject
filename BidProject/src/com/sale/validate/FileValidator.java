package com.sale.validate;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.category.vo.CategoryVO;

@Service("fileValidator")
public class FileValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object categoryVO, Errors errors) {
		CategoryVO file = (CategoryVO)categoryVO;
		System.out.println(file.getFile());
		if(file.getFile().getSize() == 0) {
			errors.rejectValue("file", "sale", "check your file size!");
		}
	}

}

//  || file.getFile().getSize() > 5242880