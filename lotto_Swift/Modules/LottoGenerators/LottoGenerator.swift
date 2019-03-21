//
//  Lott.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class LottoGenerator: NumGeneratorDelegate {
    
    public func generateLottoNums(lotto:Lotto) -> Lotto {
        var numbers = lotto.makeNumber()
        var lottoNums = [Int]()
        for _ in 0..<6 {
            let num = numbers.shuffled()[0]
            let index = numbers.index(of:num)
            numbers.remove(at: index!)
            lottoNums.append(num)
        }
        lottoNums.sort()
        lotto.setLottoNum(lottoNum: lottoNums)
        return lotto
    }
    
    
}
