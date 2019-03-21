//
//  Lottoi.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/21/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation
class Lotto {
    
    public var lottoNum = [Int]()
    
    public func makeNumber() -> [Int]{
        let numbers = NumMaker()
        let wholeLottoNums = numbers.makeNumbers()
        return wholeLottoNums
        
    }
    
    public func setLottoNum(lottoNum:[Int]) {
        self.lottoNum = lottoNum
    }
}
