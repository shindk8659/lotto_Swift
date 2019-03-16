//
//  FixedLottoGenerator.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class FixedLottoGenerator: NumGeneratorDelegate {
   
    public func generateLottoNums(wholenNums: [Int]) -> [Int] {
        var fiexdLottoNums = [Int]()
        for i in 1...6 {
           fiexdLottoNums.append(i)
        }
        return fiexdLottoNums
    }
    
}
