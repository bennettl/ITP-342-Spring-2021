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
    var quotesFileLocation: URL!
    
    private init(){
        
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        quotesFileLocation = documentsDirectory.appendingPathComponent("quotes.json")
        
        // Does the file exist? If it does, load it!
        if FileManager.default.fileExists(atPath: quotesFileLocation.path){
            load()
        
        // Else if it doesn't exist, initialize with default values
        } else{
            quotes = [
                Quote(message: "There’s always a bigger fish", author: "Anupam"),
                Quote(message: "i'll do you one better why is gamora", author: "Hope"),
                Quote(message: "Do or do not, there is no try", author: "Stan"),
                Quote(message: "Form is emptiness, emptiness is form”", author: "Zi"),
                Quote(message: "Press F to pay respects", author: "Jiho"),
            ]
        }
        
    }
    
    func add(quote: Quote){
        quotes.append(quote)
        save()
    }
    
    func remove(at index: Int){
        quotes.remove(at: index)
        save()
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
    
    // writing to the filesystem
    func save(){
        do{
            let encoder = JSONEncoder()
            let data = try encoder.encode(quotes)
            let jsonString = String(data: data, encoding: .utf8)!
            try jsonString.write(to: quotesFileLocation, atomically: true, encoding: .utf8)
        } catch{
            print("erroring write to file system")
        }
    }
    
    // reading from the filesystem
    func load(){
        do{
            let data = try Data(contentsOf: quotesFileLocation)
            let decoder = JSONDecoder()
            quotes = try decoder.decode([Quote].self, from: data)
        } catch{
            print("error reading from file system")
        }
    }

    
}
