//
//  Price.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class Counter {
    
    public func countingInPrice(inputString: String) -> Int {
        let wholePrice = Int(inputString)
        return wholePrice!/1000
    }

}
