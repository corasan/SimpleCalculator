//
//  Calculate.swift
//  SimpleCalculator
//
//  Created by Henry Paulino on 8/4/18.
//  Copyright © 2018 Henry Paulino. All rights reserved.
//

import Foundation

class Calculate {
    func toInt(str: String) -> Int {
        let number = Int(str)!
        return number
    }
    
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }
}
