//
//  ViewController.swift
//  GesturesAndAnimation
//
//  Created by Lee Bennett on 3/3/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewToAnimate: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var singleTap = UITapGestureRecognizer(target: self, action: #selector(userDidSingletapped(tap:)))
        
        var doubleTap = UITapGestureRecognizer(target: self, action: #selector(userDidDoubletapped(tap:)))
        doubleTap.numberOfTapsRequired = 2
        
//        let swipeLeft = UISwipeGestureRecognizer()
//        swipeLeft.direction = .left
//        let swipeRight = UISwipeGestureRecognizer()
//        swipeLeft.direction = .right
        
        
        viewToAnimate.addGestureRecognizer(singleTap)
        viewToAnimate.addGestureRecognizer(doubleTap)
        
        singleTap.require(toFail: doubleTap)

            }

    @objc func userDidSingletapped(tap: UITapGestureRecognizer){
        print("\(#function)")
    }
    
    @objc func userDidDoubletapped(tap: UITapGestureRecognizer){
        print("\(#function)")
    }

    @IBAction func changeColorDidTapped(_ sender: UIButton) {
        
        let animateToCyan = UIViewPropertyAnimator(duration: 5, curve: .linear) {
            self.viewToAnimate.backgroundColor = .cyan
        }
        
        animateToCyan.addCompletion { (position) in
            
            print("\(position)")
            let animateToBlue = UIViewPropertyAnimator(duration: 5, curve: .linear) {
                self.viewToAnimate.backgroundColor = .blue
            }
            animateToBlue.startAnimation()
        
        }
        
        animateToCyan.startAnimation()
        
    }
    
}

