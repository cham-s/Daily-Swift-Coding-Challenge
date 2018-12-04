
//
//  unique.swift
//  unique
//
//  Created by chams on 22/11/2018.
//

import Foundation



public func challenge1(input: String) -> Bool {
    
    let inputArray = Array(input)
    var seenCharacters = [Character]()
    for letter in inputArray {
        if seenCharacters.contains(letter) {
            return false
        }
        seenCharacters.append(letter)
    }
    
    
    let inputSet = NSCountedSet(array: inputArray)
    for letter in inputArray {
        if inpu
    }
    return true
}
