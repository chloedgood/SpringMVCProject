package co.grandcircus.springlab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomPizzaController {

	@RequestMapping("/custom")
	public String custom(Model model) {
					
		
	String [] toppings = { "Pepperoni", "Sausage", "Chicken", 
			"Mushroom", "Olive", "Green Pepper", "Onion", "Pineapple" };
		
	
		List<Toppings> topping = Collections.unmodifiableList(
				Arrays.asList(
						new Toppings("Pepperoni", 1),
						new Toppings("Suasage", 2),
						new Toppings("Chicken", 1.5),
						new Toppings("Mushroom", 0.5),
						new Toppings("Olive", 0.75),
						new Toppings("Green Pepper", 1),
						new Toppings("Onion", 0.50),
						new Toppings("Pineapple", 1.75)						
		));
		
		
		model.addAttribute("toppingslist", topping);
	
		return "custom-pizza";
	}
}
