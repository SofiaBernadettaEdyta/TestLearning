//
//  main.swift
//  TestLearning
//
//  Created by Zofia Drabek on 09/02/2020.
//  Copyright © 2020 Zofia Drabek. All rights reserved.
//

import Foundation

func add(a: Int, b: Int) -> Int {
    return a + b
}

func testAddPositives() -> Bool {
    return add(a: 3, b: 7) == 10
}

func testAddNegatives() -> Bool {
    return add(a: -10, b: -3) == -13
}

func testAddOposites() -> Bool {
    return add(a: -3, b: 3) == 0
}

func testReflecsivity() -> Bool{
    let result0 = add(a: 3, b: 5)
    let result1 = add(a: 5, b: 3)
    let check0 = result0 == 8
    let check1 = result1 == 8
    return check0 && check1
}

//func testAddMax() -> Bool {
//    return add(a: Int.max, b: 1) == 0
//}

let testArray = [
    testAddPositives,
    testAddNegatives,
    testAddOposites,
//    testAddMax
]

let testPassed = !testArray
    .map { $0() }
    .contains(false)

print("test is passed \(testPassed)")
