//
//  User.swift
//  TestsDemo
//
//  Created by Lee Bennett on 3/1/21.
//

import Foundation

class User{
    
    static let currentUser = User(firstName: "Bennett")
    
    var firstName : String
    
    init(firstName: String){
        self.firstName = firstName
    }
}
