//
//  NewQuoteViewController.swift
//  RandomQuoteGeneratorDemo
//
//  Created by Lee Bennett on 3/15/21.
//

import UIKit

typealias AddQuoteCompletionHandler = ((Quote) -> Void)


class NewQuoteViewController: UIViewController {

    @IBOutlet weak var authorTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    var aRandomNumber: Int = 10
    
    var completionHandler: AddQuoteCompletionHandler?
    
    // 3
    @IBAction func userDidTappedCreate(_ sender: UIButton) {
        // TODO: - Validation
        
        // Swift is TYPE SAFE
        // Create a new quote
        let quote = Quote(message: messageTextField.text!, author: authorTextField.text!)
        QuoteService.shared.add(quote: quote)
        
        // 4
        if let completionHandler = completionHandler{
            completionHandler(quote)
        }
        
        navigationController?.popViewController(animated: true)
        
        
    }

}
