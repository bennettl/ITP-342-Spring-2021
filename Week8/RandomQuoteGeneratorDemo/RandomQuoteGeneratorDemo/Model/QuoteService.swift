//
//  QuoteService.swift
//  RandomQuoteGeneratorDemo
//
//  Created by Lee Bennett on 3/10/21.
//

import Foundation

class QuoteService{
    
    private var quotes = [Quote]()
    
    static let shared = QuoteService()
    
    private init(){
        quotes = [
            Quote(message: "There’s always a bigger fish", author: "Anupam"),
            Quote(message: "i'll do you one better why is gamora", author: "Hope"),
            Quote(message: "Do or do not, there is no try", author: "Stan"),
            Quote(message: "Form is emptiness, emptiness is form”", author: "Zi"),
            Quote(message: "Press F to pay respects", author: "Jiho"),
        ]
    }
    
    func add(quote: Quote){
        quotes.append(quote)
    }
    
    func remove(at index: Int){
        quotes.remove(at: index)
    }
    
    func numberOfQuotes() -> Int{
        return quotes.count
    }
    
    func get(at index: Int) -> Quote{
        return quotes[index]
    }
    
    func getRandomQuote() -> Quote?{
        return quotes.randomElement()
    }

    
}
