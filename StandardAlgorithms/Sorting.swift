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
            
            leftList = mergeSort(data: leftList)
            rightList = mergeSort(data: rightList)
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
            
            while j < rightList.count {
                dataCopy[k] = rightList[j]
                k += 1
                j += 1
            }
        }
        return dataCopy
        }
    
    func linearSearch(data: [Int], searchItem: Int) -> Bool {
      for value in data {
        if value == searchItem {
          return true
        }
      }
      return false
    }
    
    func binarySearch <T:Comparable> (_ data: Array <T>, _ searchItem: T) -> (Bool, Int) {
        var lowerIndex = 0
        var upperIndex = data.count - 1
        var index = Int()
        while true {
          let currentIndex = (lowerIndex + upperIndex)/2
          if data[currentIndex] == searchItem {
            index = currentIndex
          } else if lowerIndex > upperIndex {
            index = -1
          } else {
            if data[currentIndex] > searchItem {
              upperIndex = currentIndex - 1
            } else {
              lowerIndex = currentIndex + 1
            }
          }
          if index == -1 {
            return (false, index)
          } else if index == currentIndex {
            return (true, index)
          }
        }
    }
}
    

