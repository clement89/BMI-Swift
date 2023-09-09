//
//  CalculationTest.swift
//  BMI CalculatorTests
//
//  Created by Clement Joseph on 09/09/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import XCTest
@testable import BMI_Calculator

class CalculatorBrainTests: XCTestCase {

    // Test case for calculating BMI with a value less than 18.5
    func testCalculateBMIUnderweight() {
        var calculatorBrain = CalculatorBrain()
        calculatorBrain.calculateBMI(height: 1.75, weight: 55.0)
        
        XCTAssertEqual(calculatorBrain.getBMIValue(), "18.0")
        XCTAssertEqual(calculatorBrain.getAdvice(), "Eat more pies!")
        XCTAssertEqual(calculatorBrain.getColor(), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    }

    // Test case for calculating BMI with a value between 18.5 and 24.9
    func testCalculateBMINormalWeight() {
        var calculatorBrain = CalculatorBrain()
        calculatorBrain.calculateBMI(height: 1.75, weight: 70.0)
        
        XCTAssertEqual(calculatorBrain.getBMIValue(), "22.9")
        XCTAssertEqual(calculatorBrain.getAdvice(), "Fit as a fiddle!")
        XCTAssertEqual(calculatorBrain.getColor(), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
    }

    // Test case for calculating BMI with a value greater than 24.9
    func testCalculateBMIOverweight() {
        var calculatorBrain = CalculatorBrain()
        calculatorBrain.calculateBMI(height: 1.75, weight: 85.0)
        
        XCTAssertEqual(calculatorBrain.getBMIValue(), "27.8")
        XCTAssertEqual(calculatorBrain.getAdvice(), "Eat less pies!")
        XCTAssertEqual(calculatorBrain.getColor(), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
    }

    // Test case for calculating BMI with zero height (should return default values)
    func testCalculateBMIZeroHeight() {
        var calculatorBrain = CalculatorBrain()
        calculatorBrain.calculateBMI(height: 0.0, weight: 70.0)
        
        XCTAssertEqual(calculatorBrain.getBMIValue(), "inf")
        XCTAssertEqual(calculatorBrain.getAdvice(), "Eat less pies!")
        XCTAssertEqual(calculatorBrain.getColor(), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))    }

    // Add more test cases as needed for edge cases and additional functionality

}
