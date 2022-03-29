package XWatchShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {
	
	@RequestMapping(value = {"/","/home-page"})
	public ModelAndView Index() {
		mvShare.addObject("slide", homeService.GetDataSlide());
		mvShare.addObject("brands", homeService.GetDataBrands());
		mvShare.addObject("products", homeService.GetDataProducts());
		mvShare.setViewName("User/index");
		return mvShare;
	}
	@RequestMapping(value = {"/product"})
	public ModelAndView Product() {
		ModelAndView mv = new ModelAndView("User/product");
		return mv;
	}
}
