package com.group1.springboot.milton.controller.place;

import java.io.File;
import java.io.InputStream;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.group1.springboot.milton.model.Cart;
//import com.group1.springboot.milton.model.Pet;
//import com.group1.springboot.milton.model.Place;
import com.group1.springboot.milton.model.ProductInfo;
import com.group1.springboot.milton.model.ProductType;
//import com.group1.springboot.milton.model.RestaurantType;
import com.group1.springboot.milton.service.PlaceServiceImpl;
import com.group1.springboot.milton.service.TypeServiceImpl;
import com.group1.springboot.utils.SystemUtils;
//import com.group1.springboot.validate.PlaceValidator;


@Controller
@SessionAttributes({"productList", "cart","CurrentUser"})
public class PlaceFindViewController {

//	@Autowired
//	PlaceValidator placeValidator;

	@Autowired
	PlaceServiceImpl placeService;

	@Autowired
	TypeServiceImpl typeService;

	@Autowired
	ServletContext context;

	@GetMapping("/shopeCarPage")
	public String ShopeCarPage() {
		return "Milton/shopeCarPage";
				
	}
	
	@GetMapping("/FrontEndShopeCartOrderFind")
	public String clientCar() {
		return "Milton/FrontEndShopeCartOrderFind";
	}
	
	@GetMapping("/insertRestaurant")
	public String sendInsertRestaurant(Model model) {
//		Place place = new Place(3, "墨西哥大嬸的店","02-95025871", "新北市", 135.225558, 
//				         25.66555, "www.test.com.tw", null, null, null);
//		Place place = new Place();
//		model.addAttribute("place", place);
		return "Milton/insertRestaurant";
	}
	
	
	@ModelAttribute("typeList")
	public List<ProductType> getAllRestaurantType() {
		return typeService.findRestaurantTypes();
	}

	@ModelAttribute("productList")
	public List<ProductInfo> getProductByTypeId() {
		return typeService.findProduct();
	}

	@ModelAttribute("productinfo")
	public ProductInfo getProduct1(@RequestParam(value = "productId", required = false) Integer placeId) {
		System.out.println("------------------------------------------");
		ProductInfo product = null;
		if (placeId != null) {
			product = placeService.findById(placeId);
		} else {
			product = new ProductInfo();
		}
		System.out.println("In @ModelAttribute, product=" + product);
		return product;
	}
	
	// 獲取產品id
//	@ModelAttribute("cart")不能跟PostMapping同時共用
	@PostMapping(path="/insertRestaurant")
	public String getProductId(
			@RequestParam(value = "productCode", required = false) Integer productId,
			@RequestParam(value = "todo", required = false) String todo,
			@RequestParam(value = "cartIndex", required = false) String cartindex,
			@RequestParam(value = "customerId", required = false) Integer customerid,
			Model m) {
//		HttpSession session,
		List<Cart> theCart = (List<Cart>)m.getAttribute("cart");
		
		if(theCart == null) {
			theCart = new ArrayList<Cart>();
		}
		System.out.println("====");
		System.out.println(productId);
		Cart newCartItem = new Cart();
		newCartItem.setProductInfo(placeService.findById(productId));
		
		System.out.println("產品資訊:" + newCartItem.getProductInfo().getProductname());
		System.out.println("使用者編號:" + customerid);
		//userorderid
		ArrayList<Integer> userordeid = placeService.getUserOrderId();
	
		
		newCartItem.setProductid(newCartItem.getProductInfo().getProductid());
		newCartItem.setProductname(newCartItem.getProductInfo().getProductname());
		newCartItem.setProductquantity(1);
		newCartItem.setProductprice(newCartItem.getProductInfo().getProductprice());
		newCartItem.setProductamount(0);
		newCartItem.setUserOrderId(userordeid.get(0));
		newCartItem.setCustomerId(customerid);
		
		
		boolean found = false;
//		Iterator iter = theCart.iterator();
		//有相同商品(
		for(Cart cart : theCart) {
			if (cart.getProductid() == newCartItem.getProductInfo().getProductid()) {
				//數量迭家
				cart.setProductquantity(1);
				
				found = true;
			}
		}
		
		//沒有相同商品
		if (!found) { // Add it to the cart
			theCart.add(newCartItem);
					
		}//移除購物車商品
		else if(todo.equals("remove")) {
			System.out.println("移除_產品商品index:" + Integer.parseInt(cartindex));
			theCart.remove(Integer.parseInt(cartindex));			
		}
		int shopeCartCount = theCart.size();
		System.out.println("購物車數量:"+shopeCartCount);
		m.addAttribute("cartCount",  shopeCartCount);
		m.addAttribute("cart", theCart);									
		return "Milton/insertRestaurant";
		
	}
	//結帳
	@SuppressWarnings("unchecked")
	@PostMapping(path="/shopCartCheckOut")
	public String shopCartCheckOut(Model m) {
		int totalPrice = 0;
		
		
		List<Cart> theCart = (List<Cart>)m.getAttribute("cart");
		for(Cart cart : theCart) {
			
			
			Integer cart_productid = cart.getProductid();
			String cart_productname = cart.getProductname();
			Integer cart_productquantity = cart.getProductquantity();
			Integer cart_productprice = cart.getProductprice();
			Integer cart_productamount = cart.getProductamount();
			Integer cart_userorderId = cart.getUserOrderId();
			Integer cart_customerId = cart.getCustomerId();
//			
			System.out.println(cart_productid);
			System.out.println(cart_productname);
			System.out.println(cart_productquantity);
			System.out.println(cart_productprice);
			System.out.println(cart_productamount);
			System.out.println(cart_userorderId);
			System.out.println(cart_customerId);
			
			Cart CartItem = new Cart(cart_productid,cart_productname,cart_productquantity,
					cart_productprice,cart_productamount,cart_userorderId,cart_customerId);
			
			
			totalPrice += cart.getProductInfo().getProductprice();
			placeService.save(CartItem);
	
		}
		System.out.println("總金額:" + totalPrice);
//		StringBuilder sb = new StringBuilder();
//		Formatter formatter = new Formatter(sb); // Send all output to sb
//		formatter.format("%.2f", totalPrice); 
//		System.out.println("總金額:" + sb);
		m.addAttribute("totalPrice",  totalPrice);
		
		
		
		return "Milton/shopCartCheckOutSuccess";
		
	}
	

//	@ModelAttribute("petList")
//	public List<Pet> getAllABC() {
//
//		return Arrays.asList(new Pet(1, "hi", "hihi"));
//
//	}

}
