//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Goran Brlas on 16/02/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import Foundation

class CalculatorBrain {
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    private var operations: Dictionary<String, Operation> = [
        "π" : Operation.Constant(M_PI),
        "e" : Operation.Constant(M_E),
        "±" : Operation.UnaryOperation({ -$0 }),
        "√" : Operation.UnaryOperation(sqrt),
        "cos" : Operation.UnaryOperation(cos),
        "×" : Operation.BinaryOperation({ $0 * $1 }), //closures
        "÷" : Operation.BinaryOperation({ $0 / $1 }),
        "+" : Operation.BinaryOperation({ $0 + $1 }),
        "-" : Operation.BinaryOperation({ $0 - $1 }),
        "=" : Operation.Equals
    ]
    
    //discrete set of values
    //no inheritance
    //pass by value
    private enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double, Double) -> Double)
        case Equals
    }
    
    
    func performOperation(symbol: String) {
        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let constantValue):
                accumulator = constantValue
            case .UnaryOperation(let function):
                accumulator = function(accumulator)
            case .BinaryOperation(let function):
                executePendingBinaryOperation()
                pending = PendingBinaryOperationInfo(binaryFunction: function, firstOperand: accumulator)
            case .Equals:
                executePendingBinaryOperation()
            }
        }
    }
    
    private func executePendingBinaryOperation() {
        if pending != nil {
            accumulator = pending!.binaryFunction(pending!.firstOperand, accumulator)
            pending = nil
        }
    }
    
    private var pending: PendingBinaryOperationInfo?
    
    //almost identical to class
    //no inheritance
    //like enums, passed by value(when we pass it, the value is copied, so if we change it the original remains the same)
    //classes are passed by reference(lives in a heap and we are passing a pointer to it)
    private struct PendingBinaryOperationInfo {
        //for structs we don't need to initialize its vars
        var binaryFunction: (Double, Double) -> Double
        var firstOperand: Double
    }
    
    //read only property because it only computes the get, not the set
    var result: Double {
        get {
            return accumulator
        }
    }
    
    
}
