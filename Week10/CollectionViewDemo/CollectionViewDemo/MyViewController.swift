//
//  MyViewController.swift
//  CollectionViewDemo
//
//  Created by Lee Bennett on 3/22/21.
//

import UIKit

class MyViewController: UIViewController, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! PhotoCell
        
        cell.mainLabel.text = "\(indexPath.item)"
        
        cell.backgroundColor = UIColor(
            red: CGFloat(arc4random_uniform(UInt32(255.0)))/255.0,
            green: CGFloat(arc4random_uniform(UInt32(255.0)))/255.0,
            blue: CGFloat(arc4random_uniform(UInt32(255.0)))/255.0, alpha: 1.0)
        
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
