//
//  Meal.swift
//  FoodTracker
//
//  Created by Tyler Christopher Weddle on 1/24/18.
//  Copyright © 2018 libraries. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Init
    
    //Question mark next to init indicates that this method is Failable (can return nil)
    init?(name:String, photo: UIImage?, rating: Int) {
        if (name.isEmpty || rating < 0) {
            return nil
        }
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
