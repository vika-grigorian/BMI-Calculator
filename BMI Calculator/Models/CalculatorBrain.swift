//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vika on 08.10.24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmi1ToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmi1ToDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(red: 77/255, green: 161/255, blue: 232/255, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor(red: 27/255, green: 156/255, blue: 133/255, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor(red: 194/255, green: 53/255, blue: 140/255, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor(red: 77/255, green: 161/255, blue: 232/255, alpha: 1)
    }
}
