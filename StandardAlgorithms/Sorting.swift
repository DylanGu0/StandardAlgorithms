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
    

}
