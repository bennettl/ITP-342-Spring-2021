//
//  ViewController.swift
//  UnsplashITPDemo
//
//  Created by Lee Bennett on 3/29/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        ImageModel.shared.getRandomImage()
    }


}

