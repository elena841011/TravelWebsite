package com.group1.springboot.joelin.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.group1.springboot.joelin.model.Stay;




@Component
public class StayValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Stay.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {	
		Stay stay =(Stay) target;
		ValidationUtils.rejectIfEmpty(errors, "number", "stay.number.notempty",  "編號不能是空白(D.V.)");
		ValidationUtils.rejectIfEmpty(errors, "hotel", "stay.hotel.notempty","名稱不能是空白(D.V.)");
		ValidationUtils.rejectIfEmpty(errors, "price", "stay.price.notempty", "價格不能是空白(D.V.)");
		
//       if(event.getName() == null) {
//	}
  }
}
