package com.group1.springboot.bos.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.group1.springboot.bos.model.CarBos;


@Component
public class CarValidatorBos implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return CarBos.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {	
		CarBos car =(CarBos) target;
//		ValidationUtils.rejectIfEmpty(errors, "Id", "car.Id.notempty",  "編號不能是空白(D.V.)");
		ValidationUtils.rejectIfEmpty(errors, "name", "car.name.notempty","名稱不能是空白(D.V.)");
		ValidationUtils.rejectIfEmpty(errors, "price", "car.price.notempty", "價格不能是空白(D.V.)");
		
//       if(event.getName() == null) {
//	}
  }
}
