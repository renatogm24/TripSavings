package com.codingdojo.tripsavings.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.tripsavings.models.Expense;
import com.codingdojo.tripsavings.services.ExpenseService;

@Controller
public class ExpenseController {
	private final ExpenseService expenseService;

	public ExpenseController(ExpenseService expenseService){
	        this.expenseService = expenseService;
	    }

	@RequestMapping("/expenses")
	 public String index(Model model, @ModelAttribute("expense") Expense expense) {
        List<Expense> expenses = expenseService.allExpenses();
        model.addAttribute("expenses", expenses);
        return "/expenses/index.jsp";
    }

	@RequestMapping(value = "/expenses", method = RequestMethod.POST)
	public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			model.addAttribute("expenses", expenseService.allExpenses());
			return "/expenses/index.jsp";
		}
		
		expenseService.createExpense(expense);
		return "redirect:/expenses";
	}
	
	@RequestMapping("/expenses/new")
	 public String newExpense(@ModelAttribute("expense") Expense expense) {
       return "/expenses/new.jsp";
   }

	@RequestMapping("/expenses/{id}")
	public String show(Model model, @PathVariable("id") Long id) {
		Expense expense = expenseService.findExpense(id);
		model.addAttribute("expense", expense);
		return "show.jsp";
	}
	
	@GetMapping("/expenses/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {
		Expense expense = expenseService.findExpense(id);
		model.addAttribute("expense", expense);
		return "/expenses/edit.jsp";	
	}

	@PutMapping("/expenses/{id}")
	public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if (result.hasErrors()) {
			return "/expenses/edit.jsp";
		} else {
			expenseService.updateExpense(expense);
			return "redirect:/expenses";
		}
	}
	
	@DeleteMapping("/expenses/{id}")
    public String destroy(@PathVariable("id") Long id) {
		expenseService.deleteExpense(id);
        return "redirect:/expenses";
    }

}
