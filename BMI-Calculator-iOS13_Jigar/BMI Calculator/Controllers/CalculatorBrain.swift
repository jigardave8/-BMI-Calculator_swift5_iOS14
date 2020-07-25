//
//  Calculatorbrain.swift
//  BMI Calculator
//
//  Created by jigar on 25/07/20.
//  Copyright © 2020 Bitdegree. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        
        let bmiTo1DecimalPlace = String(format: "%.1f",  bmi?.value ?? 0.0)
        
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)

    }
    
    
    mutating func calculateBMI(height: Float, weight: Float)
        
    {
        let bmiValue = weight / (height * height)
        
        
        if bmiValue < 18.5
        {
            //  or          print("You're Underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
            
        else if bmiValue < 24.9
        {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
            
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    
}


