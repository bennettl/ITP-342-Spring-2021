//
//  UserTest.swift
//  TestsDemoTests
//
//  Created by Lee Bennett on 3/1/21.
//

import XCTest
@testable import TestsDemo

class UserTest: XCTestCase {
//
//    var currentUser: User!
//

    override func setUp() {
        print("\(#function)")
//        currentUser = User(firstName: "Bennett")
    }
   
    func testUser(){
        
        // Any -> data type that can be structure, enum, or class
        // AnyObject -> data type that refers to a class
        let numbers = [1,2,3,4]
        
        print("\(#function)")
        XCTAssertEqual(User.currentUser.firstName, "Bennett2")
//        currentUser
        // Validates that expected result matches actual result - assertion
        // equality, inequality, greater than , less than
       
    }
    
    func testUser2(){
        print("\(#function)")
    }
    
    func helperMethod(){
        
    }
    
    override func tearDown() {
        print("\(#function)")
    }
}
