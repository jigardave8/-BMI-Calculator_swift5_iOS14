//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.

/// &&
//
//  ViewController.swift
//  BMI Calculator
//
//  Created by jigar on 24/07/20.
//  Copyright © 2020 jigar. All rights reserved.
//
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let height = (String(format: "%.2f" , sender.value))
        heightLabel.text = "\(height)m"
        
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let weight =  (String(format: "%.0f" , sender.value))
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
        
    }
    
}




