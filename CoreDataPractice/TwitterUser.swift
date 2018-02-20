//
//  TwitterUser.swift
//  CoreDataPractice
//
//  Created by Tyler Christopher Weddle on 2/20/18.
//  Copyright © 2018 Tyler Weddle. All rights reserved.
//

import UIKit
import CoreData

class TwitterUser: NSManagedObject {
    
    
    /*func findTwitterUser(handle: String, in context: NSManagedObjectContext) throws -> TwitterUser {
        let fetch_request: NSFetchRequest<TwitterUser> = TwitterUser.fetchRequest()
        fetch_request.predicate = NSPredicate(format: "handle = %@", handle)
        
        do {
            let matches = try context.fetch(fetch_request)
            if matches.count > 0 {
                return matches[0]
            }
        } catch {
            throw error
        }
        
        let twitterUser = TwitterUser(context: context, n)
        twitterUser.handle = handle
        twitterUser.name = "FakeName"
        return twitterUser
    }*/
    
    func saveUser(handle: String, name: String, in context: NSManagedObjectContext) {
        self.handle = handle
        self.name = name
        do {
            try context.save()
        } catch {
            fatalError("Unable to save TwitterUser: \(name) because \(error)")
        }
    }
}
