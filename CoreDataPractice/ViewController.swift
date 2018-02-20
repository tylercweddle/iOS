//
//  ViewController.swift
//  CoreDataPractice
//
//  Created by Tyler Christopher Weddle on 2/20/18.
//  Copyright © 2018 Tyler Weddle. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        container?.performBackgroundTask { context in
            /*let tu: TwitterUser = TwitterUser(context: context)
            tu.saveUser(handle: "uniq_handle", name: "cool_name", in: context)*/
            
            let request :NSFetchRequest<TwitterUser> = TwitterUser.fetchRequest()
            request.predicate = NSPredicate(format: "name = %@", "cool_name")
            
            do {
                let matches = try context.fetch(request)
                if matches.count > 0 {
                    print(matches[0].handle!)
                    print(matches[0].name!)
                }
            } catch {
                fatalError("\(error)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    var container: NSPersistentContainer? =
        (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer
    
}

