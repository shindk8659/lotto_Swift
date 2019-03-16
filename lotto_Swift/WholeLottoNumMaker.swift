//
//  WholeNums.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class WholeLottoNumMaker {
    
    public func makeWholeLottoNums() -> [Int]  {
        var num = [Int]()
        for i in 1...45 {
            num.append(i)
        }
        return num
    }
}
