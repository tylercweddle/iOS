//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Tyler Christopher Weddle on 1/23/18.
//  Copyright © 2018 libraries. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    private var num_pressed = 0
    
    //MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        for _ in 0..<starCount {
            //Create Big Red Button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            //Add viusal constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            //Set up button action
            button.addTarget(self, action: #selector(self.ratingButtonTapped(button:)), for: .touchUpInside)
            
            //Add button to stack (using UIStackView)
            addArrangedSubview(button)
        }
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        let o = Objct()
        print(o.str_append("Hello ", "World!"))
        
        
        //print(o.arith(FIVE, 6))
        //print(o.squared(4.0))
        
        //Passing in arrays/pointers, etc.
        /*
        let f_arr = UnsafeMutablePointer<Double>.allocate(capacity: 8)
        f_arr.initialize(from: [1.0, 2.0, 3.0, 4.0], count:4)
        print(o.fold_squared(f_arr).pointee) //first value
        print(o.fold_squared(f_arr + 2).pointee) //third value
        */
        
        
        
        
    }
    
    //MARK: Properties
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0)
    @IBInspectable var starCount: Int = 5
}
