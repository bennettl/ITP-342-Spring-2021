//
//  MadLibViewController.swift
//  MadLibs
//
//  Created by Lee Bennett on 2/17/21.
//

import UIKit

class MadLibViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var verbTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var lessOrMoreSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var animalSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var favoriteNumberSlider: UISlider!
    
    @IBOutlet weak var petsStepper: UIStepper!
    
    @IBOutlet weak var happyEndingSwitch: UISwitch!
    
    @IBOutlet weak var favoriteNumberLabel: UILabel!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lessOrMoreSegmentedControl.selectedSegmentIndex = 1
    }
    
    @IBAction func lessOrMoreDidTapped(_ sender: UISegmentedControl) {
    
        if sender.selectedSegmentIndex == 0{
            containerView.isHidden = true
        } else if sender.selectedSegmentIndex == 1{
            containerView.isHidden = false
        }
    }
    
    @IBAction func favoriteNumberDidChanged(_ sender: UISlider) {
        favoriteNumberLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func numberOfPetsDidChange(_ sender: UIStepper) {
    }
    
    @IBAction func createStoryDidTapped(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Story", message: nil, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
    
}
