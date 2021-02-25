//
//  MadLibViewController.swift
//  MadLibs
//
//  Created by Lee Bennett on 2/17/21.
//

import UIKit

class MadLibViewController: UIViewController, UITextFieldDelegate {

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
        
        nameTextField.delegate = self
        verbTextField.delegate = self

        lessOrMoreSegmentedControl.selectedSegmentIndex = 1
    }
    
    func doSomething(){
        print("1")
        print("2")
        print("3")
    }
    
    @IBAction func lessOrMoreDidTapped(_ sender: UISegmentedControl) {
    
        doSomething()
        
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
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func createStoryDidTapped(_ sender: UIButton) {
                
        // At age 21, John went to Los Angeles to act. He brought 5 dogs with him, and wore a shirt with his lucky number 8. He lived happliy ever after.
        
        let index = animalSegmentedControl.selectedSegmentIndex
        let selectedAnimal = animalSegmentedControl.titleForSegment(at: index)
        
        var story = "At age \(ageTextField.text!), \(nameTextField.text!) went to \(cityTextField.text!) to \(verbTextField.text!). He brought \(Int(petsStepper.value)) \(selectedAnimal!) with him, and wore a shirt with his lucky number \(Int(favoriteNumberSlider.value))"
        
        if happyEndingSwitch.isOn{
            story += " He lived happliy ever after."
        } else{
            story += " It didn't end too well..."
        }
                
        let alert = UIAlertController(title: "Story", message: story, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
  
                
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
