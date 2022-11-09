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
    
}
