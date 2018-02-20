//
//  Tweet.swift
//  CoreDataPractice
//
//  Created by Tyler Christopher Weddle on 2/20/18.
//  Copyright © 2018 Tyler Weddle. All rights reserved.
//

import UIKit
import CoreData

class Tweet: NSManagedObject {
    
    
    /*func findTweet(name: String, in context: NSManagedObjectContext) throws -> Tweet {
        let fetch_request: NSFetchRequest<Tweet> = Tweet.fetchRequest()
        fetch_request.predicate = NSPredicate(format: "name = %@", name)
        
        do {
            let matches = try context.fetch(fetch_request)
            if matches.count > 0 {
                return matches[0]
            }
        } catch {
            throw error
        }
        
        let tweet = Tweet(context: context)
        tweet.unique = "ree"
        tweet.text = name
        tweet.created = nil
        tweet.tweeter = try? TwitterUser.findTwitterUser(handle: name, in: context)
        return tweet
    }*/
    
}
