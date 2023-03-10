package co.grandcircus.springlab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReviewResultsController {
	
	@PostMapping("/review-form")
	public String reviewdisplay(
		@RequestParam String name, 
		@RequestParam String comment,
		@RequestParam int rating, 
		Model model ) {
		
		model.addAttribute("name", name );
		model.addAttribute("comment", comment );
		model.addAttribute("rating", rating);
			return "reviewdisplay";		
	}
}
