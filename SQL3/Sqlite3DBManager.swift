//
//  Sqlite3DBManager.swift
//  SQL3
//
//  Created by Tyler Christopher Weddle on 2/13/18.
//  Copyright © 2018 Paradyme Management, Inc. All rights reserved.
//

import Foundation


class Sqlite3DBManager {
    
    let query = "SELECT * FROM Attractions"
    
    var stmt_ptr : OpaquePointer?
    
    
}

class Attraction {
    private var name: String
    private var website: String
    private var days: [Int]
    private var map: String
    private var cost_lower: Double
    private var cost_upper: Double
    private var address: String
    
    init(name: String, website: String, days: String, map: String, cost: String, address: String) {
        self.name = name
        self.website = website
        self.map = map
        self.address = address
        
        
        //Parse days string
        
        self.cost_lower = 0
        self.cost_upper = 0
        self.days = []
    }
}
