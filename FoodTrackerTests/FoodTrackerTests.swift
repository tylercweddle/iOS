//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by libraries on 1/22/18.
//  Copyright © 2018 libraries. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal Class Tests
    
    //Confirm the Meal init returns a Meal object when passed valid params
    func testMealInitSucceeds() {
        let zeroRating = Meal.init(name:"Z", photo:nil, rating: 0)
        XCTAssertNotNil(zeroRating)
        
        let highestRating = Meal.init(name:"H", photo:nil, rating :0)
        XCTAssertNotNil(highestRating)
    }
    
    func testMealInitFails() {
        let negativeRating = Meal.init(name: "N", photo: nil, rating: -1)
        XCTAssertNil(negativeRating)
        
        let emptyName = Meal.init(name: "", photo: nil, rating: 2)
        XCTAssertNil(emptyName)
    }
}
