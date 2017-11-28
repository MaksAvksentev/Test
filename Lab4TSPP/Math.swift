//
//  Math.swift
//  Lab4TSPP
//
//  Created by Maksim Avksentev on 28.11.17.
//  Copyright © 2017 AvksentevMaks. All rights reserved.
//

import UIKit

class Math {

    func main(firstNumber: Int64, secondNumber: Int64, thirdNumber: Int64) -> (Float, Int64) {
        
        let averageNumber = self.average(firstNumber, secondNumber, thirdNumber)
        return (averageNumber, self.round(NSNumber(value: averageNumber)))
    }
    
    func average(_ firstNumber: Int64, _ secondNumber: Int64, _ thirdNumber: Int64) -> Float {
        
        return (Float(firstNumber + secondNumber + thirdNumber) / 3.0)
    }
    
    func round(_ number: NSNumber) -> Int64 {
        
        return Int64(lroundf(number.floatValue))
    }
}
