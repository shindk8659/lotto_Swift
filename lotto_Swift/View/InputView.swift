//
//  InputView.swift
//  lotto_Swift
//
//  Created by 김예은 on 16/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class inputView {
    
    public init() {
        
    }
    
    //구입 금액을 입력하는 함수
    public func inputPurchase() -> Int {
        print("구입 금액을 입력해 주세요.")
        let inputMoney: String = readLine()!
        let money: Int = Int(inputMoney)!
        
        return money
    }
    
    //지난주 당첨번호 입력하는 함수
    public func inputLastWeekLotto(size: Int) -> [Int] {
        var lastWeekLottoArray: [Int] = [Int]()
        for _ in 0..<size {
            let input: String = readLine()!
            let number: Int = Int(input)!
            lastWeekLottoArray.append(number)
        }
        
        return lastWeekLottoArray
    }
}
