//
//  ViewController.swift
//  Connections
//
//  Created by Lee Bennett on 2/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidPressed(_ sender: UIButton) {
        mainLabel.text = "Hello"
    }
    
}

