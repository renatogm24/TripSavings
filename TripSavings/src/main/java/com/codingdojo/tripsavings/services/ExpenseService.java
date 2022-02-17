package com.codingdojo.tripsavings.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.tripsavings.models.Expense;
import com.codingdojo.tripsavings.repositories.ExpenseRepository;

@Service
public class ExpenseService {

	private final ExpenseRepository expenseRepository;

    public ExpenseService(ExpenseRepository expenseRepository) {
        this.expenseRepository = expenseRepository;
    }
    // devuelve todos los libros
    public List<Expense> allExpenses() {
        return expenseRepository.findAll();
    }
    // crea un libro
    public Expense createExpense(Expense b) {
        return expenseRepository.save(b);
    }
    //actualiza un libro
    public Expense updateExpense(Expense b) {
        return expenseRepository.save(b);
    }
    // recupera un libro
    public Expense findExpense(Long id) {
        Optional<Expense> optionalExpense = expenseRepository.findById(id);
        if(optionalExpense.isPresent()) {
            return optionalExpense.get();
        } else {
            return null;
        }
    }
    
    public void deleteExpense(Long id) {
    	expenseRepository.deleteById(id);
    }
	
}
