//
//  Meal.swift
//  FoodTracker
//
//  Created by Ingenieria y Software on 18/10/15.
//  Copyright © 2015 Ingenieria y Software. All rights reserved.
//

import UIKit

class Meal {
    var name: String
    var photo: UIImage?
    var rating: Int
    init?(name: String, photo: UIImage?, rating: Int) {
       
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
