//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Guo, Dylan (Coll) on 09/11/2022.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        //arrange - test setup
        let unsortedArray = [3, 1, 10, 15, 4]
        let sort = Sorting()
        let expected = [1, 3, 4, 10, 15]
        //act - perform action we want to test
        let sortedArray = sort.bubbleSort(data: unsortedArray)
        //assert - check the action behaved as we expected
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testMergeSortWithUnsortedArrayOfIntegersReturnsSortedArray() {
        let unsortedArray = [3, 1, 10, 15, 4]
        let sort = Sorting()
        let expected = [1, 3, 4, 10, 15]
        let sortedArray = sort.mergeSort(data: unsortedArray)
        XCTAssertEqual(sortedArray, expected)
    }
    
    func testLinearSearchWithArrayOfIntegersReturnsBoolean() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let searchItem = 4
        let sort = Sorting()
        let expected = true
        let returnedValue = sort.linearSearch(data: array, searchItem: searchItem)
        XCTAssertEqual(returnedValue, returnedValue)
    }
    
    func testLinearSearchWithArrayOfIntegersReturnsBooleanIntegerTuple() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let searchItem = 4
        let sort = Sorting()
        let expected = (true, 3)
        let returnedValue = sort.binarySearch(data: array, searchItem: searchItem)
        XCTAssertEqual(returnedValue, expected)
    }
    
    
}
