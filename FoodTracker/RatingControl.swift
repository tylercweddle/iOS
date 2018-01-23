//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Tyler Christopher Weddle on 1/23/18.
//  Copyright © 2018 libraries. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

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
        //Create Big Red Button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        //Add viusal constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        //Set up button action
        button.addTarget(self, action: #selector(self.ratingButtonTapped(button:)), for: .touchUpInside)
        
        //Add button to stack (using UIStackView)
        addArrangedSubview(button)
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        num_pressed = num_pressed + 1
        var extra_s = ""
        if (num_pressed != 1) {
            extra_s = "s"
        }
        print("The button was pressed ", num_pressed, " time",extra_s)
    }
}
