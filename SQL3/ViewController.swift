//
//  ViewController.swift
//  SQL3
//
//  Created by Tyler Christopher Weddle on 2/13/18.
//  Copyright © 2018 Paradyme Management, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let a :Attraction = Attraction(name: "", website:"",days:"[1,0,1,1,1,1,0]",
                                       map:"", cost:"",address: "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

