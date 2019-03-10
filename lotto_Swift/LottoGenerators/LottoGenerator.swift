//
//  Lott.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class LottoGenerator: NumGeneratorDelegate {

    public func generateLottoNum(wholenNums:[Int]) -> [Int] {
        var wholeNums = wholenNums
        var lottoNums = [Int]()
        for _ in 0..<6 {
            let num = wholeNums.shuffled()[0]
            let index = wholeNums.index(of:num)
            wholeNums.remove(at: index!)
            lottoNums.append(num)
        }
        lottoNums.sort()
        return lottoNums
    }
    
    
}
