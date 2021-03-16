//
//  ViewController.swift
//  RandomQuoteGeneratorDemo
//
//  Created by Lee Bennett on 3/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateRandomQuote()
    }

    @IBAction func generateDidTapped(_ sender: UIButton) {
        updateRandomQuote()
    }
    
    private func updateRandomQuote(){
        if let quote = QuoteService.shared.getRandomQuote(){
            messagelabel.text = quote.message
            authorLabel.text = quote.author
        }
    }
    
}

