//
//  ViewController.swift
//  Connections
//
//  Created by Lee Bennett on 2/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    @IBAction func backgroundDidTapped(_ sender: UIButton) {
        nameTextField.resignFirstResponder()
    }
    
    @IBAction func userDidTappedReturn(_ sender: UITextField) {
        nameTextField.resignFirstResponder()
    }
    
    @IBAction func buttonDidPressed(_ sender: UIButton) {
        let name: String = nameTextField.text ?? ""
        
        mainLabel.text = "Hello"
    }
    
}

