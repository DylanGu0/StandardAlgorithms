//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Guo, Dylan (Coll) on 25/11/2022.
//

import Foundation

class Unknown {
    
    func sumFirstAndLast(data: [Int]) -> Int {
        let first = data[0]
        let last = data[data.count - 1]
        let sum = first + last
        return sum
    }
    
    func findModeOfSortedArray(data: [Int]) -> Int {
        var currentMode = Int()
        var quantity = 1
        var previousNum = data[0]
        var quantities: [Int] = Array()
        var mode = Int()
        
        if data.count == 0 {
            return 0
        } else if data.count == 1 {
            return data[0] * 2
        } else {
            for num in data {
                if num == data[0] {
                    mode = num
                    quantities.append(quantity)
                    continue
                } else {
                    if num == previousNum {
                        quantity += 1
                        quantities.append(quantity)
                    } else {
                        quantity = 1
                        quantities.append(quantity)
                    }
                    previousNum = num
                }
                for value in quantities {
                    let tempMode = mode
                    if quantity > value {
                        mode = num
                    } else if value > quantity {
                        mode = tempMode
                    }
                }
            }
        }
        return mode
    }

}
