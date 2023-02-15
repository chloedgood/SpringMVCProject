package co.grandcircus.springlab.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PizzaController {
	
	@RequestMapping("/")
	public String homepage(Model model) {
		
		List<Product> products = Collections.unmodifiableList(
				Arrays.asList(
						new Product("Anchovy Lover's", 10),
						new Product("Paleo Pizza", 15),
						new Product("Dessert Pizza", 20)					
		));
		
		
		model.addAttribute("productlist", products);
		
		return "index";
	}
}
