//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by jigar on 25/07/20.
//  Copyright © 2020 Bitdegree. All rights reserved.
//

import UIKit




class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviseLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviseLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
