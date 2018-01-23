//
//  ViewController.swift
//  FoodTracker
//
//  Created by libraries on 1/22/18.
//  Copyright © 2018 libraries. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegate callbacks for the text field
        nameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
    //MARK: UITextFieldDelegate
    
    //Once user hits 'return' in keyboard, the keyboard should disappear
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}

