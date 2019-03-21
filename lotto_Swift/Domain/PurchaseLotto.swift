//
//  PurchaseLotto.swift
//  lotto_Swift
//
//  Created by 김예은 on 21/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class PurchaseLotto {
    
    private let LOTTO_PRICE: Int = 1000
    private let money: Int
    
    public init(money: Int) {
        self.money = money
    }
    
    //로또 구매 개수를 반환해주는 함수
    public func getLotto() -> Int {
        return money / LOTTO_PRICE
    }
    
    //로또 구매 개수만큼 로또 생성하여 로또 객체를 반환하는 함수
    public func getTotalLotto() -> [Lotto] {
        var lottos: [Lotto] = [Lotto]()
        let size = getLotto()
        
        for _ in 0..<size {
            let lotto = Lotto()
            lottos.append(lotto)
        }
        
        return lottos
    }
}
