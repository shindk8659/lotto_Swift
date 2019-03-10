//
//  Price.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class Count {
    
    public func countingInPrice(inputString: String) -> Int {
        let wholePrice = Int(inputString)
        let count:Int = wholePrice!/1000
        print("\(count)개를 구매했습니다.")
        return count
    }
}
