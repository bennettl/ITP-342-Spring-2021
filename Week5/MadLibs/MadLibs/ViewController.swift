//
//  ViewController.swift
//  MadLibs
//
//  Created by Lee Bennett on 2/17/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func userDidTapped(_ sender: UITapGestureRecognizer) {
        mainView.backgroundColor = .cyan
    }
    

}

