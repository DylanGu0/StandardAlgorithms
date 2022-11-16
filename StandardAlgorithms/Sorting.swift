//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Guo, Dylan (Coll) on 09/11/2022.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var dataCopy = data
        let length = dataCopy.count - 2
        for j in 0...length {
            for i in 0...length {
                if dataCopy[i] > dataCopy[i+1] {
                    let temp = dataCopy[i+1]
                    dataCopy[i+1] = dataCopy[i]
                    dataCopy[i] = temp
                }
            }
        }
        return dataCopy
    }
    
    func mergeSort(data: [Int]) -> [Int] {
        let length = data.count
        var dataCopy = data
        let listIndexes = length - 1
        if length > 1 {
            let middleIndex = length / 2
            var rightList = Array(dataCopy[middleIndex...listIndexes])
            var leftList = Array(dataCopy[0..<middleIndex])
            var i = 0
            var j = 0
            var k = 0
            
            rightList = mergeSort(data: rightList)
            leftList = mergeSort(data: leftList)
            
            while i < leftList.count && j < rightList.count {
                if leftList[i] <= rightList[j] {
                    dataCopy[k] = leftList[i]
                    i += 1
                } else {
                    dataCopy[k] = rightList[j]
                    j += 1
                }
                k += 1
            }
            
            while i < leftList.count {
                dataCopy[k] = leftList[i]
                i += 1
                k += 1
            }
            
            while j < leftList.count {
                dataCopy[k] = rightList[j]
                k += 1
                j += 1
            }
        }
        return dataCopy
        }
}
    

