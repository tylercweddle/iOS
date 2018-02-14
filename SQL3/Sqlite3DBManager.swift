//
//  Sqlite3DBManager.swift
//  SQL3
//
//  Created by Tyler Christopher Weddle on 2/13/18.
//  Copyright © 2018 Paradyme Management, Inc. All rights reserved.
//

import Foundation


class Sqlite3DBManager {
    
    let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        .appendingPathComponent("HeroesDatabase.sqlite")
    
    var stmt_ptr : OpaquePointer?
    
    
}

class Attraction {
    private var name: String
    private var web_url: String
    private var days: [Int]
    private var map: String
    private var cost_lower: Double
    private var cost_upper: Double
    private var street_address: String
    private var photo_url: String
    
    init(name: String, website: String, days: String, map: String, cost: String, address: String, photo: String) {
        self.name = name
        self.web_url = website
        self.map = map
        self.street_address = address
        self.photo_url = photo
        
        //Parse days string
        
        self.cost_lower = 0
        self.cost_upper = 0
        self.days = []
    }
}
