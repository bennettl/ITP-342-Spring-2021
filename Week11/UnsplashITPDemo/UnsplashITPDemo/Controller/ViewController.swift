//
//  ViewController.swift
//  UnsplashITPDemo
//
//  Created by Lee Bennett on 3/29/21.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    @IBOutlet weak var mainImageView: UIImageView!
    
    // Step 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Step 1
        ImageModel.shared.getRandomImage { (image) in
            
            // Step 7
            print("image is \(image.urls.regular)")
            
            let url = URL(string: image.urls.regular)
            self.mainImageView.kf.setImage(with: url)
        }
        
        // Step 4
    }


}

