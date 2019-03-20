//
//  Lotto.swift
//  lotto_Swift
//
//  Created by 김예은 on 16/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class Lotto {

    private let lotto: [Int]
    
    public init() {
        let lottoGenerator = LottoGenerator()
        self.lotto = lottoGenerator.getLotto()
    }
    
    //한 개(1000원)의 로또를 반환해주는 함수
    public func getLotto() -> [Int] {
        return lotto
    }
}
