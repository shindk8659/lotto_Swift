//
//  LottoGenerator.swift
//  lotto_Swift
//
//  Created by 김예은 on 20/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class LottoGenerator {
    
    private let LOTTO_SIZE: Int = 6
    private var lottoArray: [Int]
    
    private let numberGenerator: NumberGenerator = NumberGenerator()
    
    public init() {
        self.lottoArray = [Int]()
    }
    
    //한 개(1000원)의 로또를 생성해주는 함수
    public func getLotto() -> [Int]  {
        for _ in 0..<LOTTO_SIZE {
            lottoArray.append(numberGenerator.getRandomNumber())
        }
        
        return lottoArray
    }

}

