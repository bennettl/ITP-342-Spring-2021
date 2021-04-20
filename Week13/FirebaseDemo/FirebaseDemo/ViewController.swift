//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by Lee Bennett on 4/17/21.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        let johnDocumentReference = Firestore.firestore().collection("users").document("john")
        
//        johnDocumentReference.getDocument { (documentSnapshot, error) in
//            if let documentSnapshot = documentSnapshot, documentSnapshot.exists{
//                print("\(documentSnapshot.data())")
//            }
//        }
        
        johnDocumentReference.addSnapshotListener { (documentSnapshot, error) in
            if let documentSnapshot = documentSnapshot, documentSnapshot.exists{
                print("\(documentSnapshot.data())")
            }
        }
        
//        // Firebase queries
//        Firestore.firestore().collection("users")
//            .whereField("firstName", isEqualTo: "John").getDocuments { (<#QuerySnapshot?#>, <#Error?#>) in
//            <#code#>
//        }
        
        
        let collectionReference = Firestore.firestore().collection("users")

        // Generate a local push key
//        let pushKey = ""
//        collectionReference.document(pushKey).setData([
//            "id": ""
//        ])
        
        let documentReference = collectionReference.addDocument(data: [
            "firstName": "Julianne",
            "lastName": "Uribe"
        ]) { (err) in
            
        if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
        
        // Access a Cloud Firestore instance from your View Controller
      
        
        
        
        
        
        // Do any additional setup after loading the view.
    }


}

