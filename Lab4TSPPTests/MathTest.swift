//
//  MathTest.swift
//  Lab4TSPPTests
//
//  Created by Maksim Avksentev on 28.11.17.
//  Copyright © 2017 AvksentevMaks. All rights reserved.
//

import XCTest
@testable import Lab4TSPP

class MathTest: XCTestCase {
    
    let math = Math()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMain() {
    
        let numbers: (Int64, Int64, Int64) = (1, 2, 3)
        let average: Float = 4
        let round: Int64 = 5
        let cortege: (Float, Int64) = (average, round)
        
        XCTAssert(math.main(firstNumber: numbers.0, secondNumber: numbers.1, thirdNumber: numbers.2) == cortege)
    }
    
    func testAverage() {
        
        let numbers: (Int64, Int64, Int64) = (1, 2, 3)
        let average: Float = 2
        
        XCTAssert(math.average(numbers.0, numbers.1, numbers.2) == average)
    }
    
    func testRoundFirst() {
        
        let round: Int64 = 9
        
        XCTAssert(math.round(NSNumber(value: 8.7)) == round)
    }
    
    func testRoundSecond() {
        
        let round: Int64 = 9
        
        XCTAssert(math.round(NSNumber(value: 8.3)) == round)
    }
}
