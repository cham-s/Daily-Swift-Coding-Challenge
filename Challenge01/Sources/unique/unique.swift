
//
//  unique.swift
//  unique
//
//  Created by chams on 22/11/2018.
//

import Foundation



public func challenge1(input: String) -> Bool {
    
    let inputArray = Array(input)
    let inputSet = NSCountedSet(array: inputArray)
    if let _ = inputArray.firstIndex(where: { inputSet.count(for: $0) > 1 }) {
        return false
    }
    return true
}
