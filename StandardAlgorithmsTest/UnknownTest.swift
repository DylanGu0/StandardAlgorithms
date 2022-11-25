//
//  UnknownTest.swift
//  StandardAlgorithms
//
//  Created by Guo, Dylan (Coll) on 25/11/2022.
//

import XCTest

class UnknownTest: XCTestCase {

    func testSumFirstAndLastIntsInArray() {
        let array = [3, 7, 4, 8, 11]
        let unknown = Unknown()
        let expected = 14
        let returnedValue = unknown.sumFirstAndLast(data: array)
        XCTAssertEqual(returnedValue, expected)
    }
    
    func testFindModeOfSortedArray() {
        let array = [1, 2, 3, 4, 4, 4, 5, 5, 6, 7]
        let unknown = Unknown()
        let expected = 4
        let returnedValue = unknown.findModeOfSortedArray(data: array)
        XCTAssertEqual(returnedValue, expected)
    }
}
