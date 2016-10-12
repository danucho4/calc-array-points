//
//  main.swift
//  CalcArrayPoints
//
//  Created by Daniel Gil Chávez on 10/11/16.
//

import Foundation

func add(num1 : Int?, num2 : Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return num1! + num2!
    }
    else {
        print("not a valid input")
        return nil
    }
}

func subtract(num1 : Int?, num2 : Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return num1! - num2!
    }
    else {
        print("not a valid input")
        return nil
    }
}

func multiply(num1 : Int?, num2 : Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return num1! * num2!
    }
    else {
        print("not a valid input")
        return nil
    }
}

func divide(num1 : Int?, num2 : Int?) -> Int? {
    if num1 != nil && num2 != nil {
        return num1! / num2!
    }
    else {
        print("not a valid input.")
        return nil
    }
}

//generic "math operation"
func mathOperation(num1 : Int?, num2 : Int?, operation : (Int?, Int?) -> Int?) -> Int? {
    return operation(num1, num2)
}

//add operation for arrays
func add(numbers : [Int]?) -> Int? {
    if numbers != nil {
        var result : Int = 0
        for number in numbers! {
            result += number
        }
        return result
    }
    else {
        return nil
    }
}

//function for multipl
func multiply(numbers : [Int]?) -> Int? {
    if numbers != nil {
        var result : Int = 1
        for number in numbers! {
            result *= number
        }
        return result
    }
    else {
        return nil
    }
}

func count(numbers : [Int]?) -> Int? {
    return numbers?.count
}

func avg(numbers : [Int]?) -> Int? {
    if numbers != nil {
        return add(numbers: numbers)! / numbers!.count
    }
    else {
        return nil
    }
}

func mathOperation(numbers : [Int]?, operation : ([Int]?) -> Int?) -> Int? {
    return operation(numbers)
}

func addPoints(num1 : (x : Double, y : Double), num2 : (x : Double, y : Double)) -> (x : Double, y : Double) {
    let resultX = num1.x + num2.x
    let resultY = num1.y + num2.y
    return (resultX, resultY)
}

func subtractPoints(num1 : (x : Double, y : Double), num2 : (x : Double, y : Double)) -> (x : Double, y : Double) {
    let resultX = num1.x - num2.x
    let resultY = num1.y - num2.y
    return (resultX, resultY)
}

func subtractPoints(num1: Dictionary<String, Double>, num2: Dictionary<String, Double>) -> Dictionary<String, Double> {
    var dic = Dictionary<String, Double>()
    let resultX : Double?
    if num1["x"] != nil && num2["x"] != nil {
        resultX = num1["x"]! - num2["x"]!
        dic["x"] = resultX
    }
    else {
        print("Missing x value")
    }
    
    let resultY : Double?
    if num1["y"] != nil && num2["y"] != nil {
        resultY = num1["y"]! - num2["y"]!
        dic["y"] = resultY
    }
    else {
        print("Missing y value")
    }
    
    return dic
}

func addPoints(num1: Dictionary<String, Double>, num2: Dictionary<String, Double>) -> Dictionary<String, Double> {
    var dic = Dictionary<String, Double>()
    let resultX : Double?
    if num1["x"] != nil && num2["x"] != nil {
        resultX = num1["x"]! + num2["x"]!
        dic["x"] = resultX
    }
    else {
        print("Missing x value")
    }
    
    let resultY : Double?
    if num1["y"] != nil && num2["y"] != nil {
        resultY = num1["y"]! + num2["y"]!
        dic["y"] = resultY
    }
    else {
        print("Missing y value")
    }
    
    return dic
}

