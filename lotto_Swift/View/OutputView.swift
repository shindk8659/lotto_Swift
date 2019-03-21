//
//  OutputView.swift
//  lotto_Swift
//
//  Created by 김예은 on 16/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class OutputView {
    
    public init() {
        
    }
    
    //구매한 로또 갯수를 출력해주는 함수
    public func outputPurchaseCount(money: Int) {
        let purchase = PurchaseLotto(money: money)
        let purchaseNum = purchase.getLotto()
        print("\(purchaseNum)개를 구매하였습니다.")
    }
    
    //구매한 로또 번호를 모두 출력해주는 함수
    public func outputTotalLotto(purchaseArray: [Lotto]) {
        for i in 0..<purchaseArray.count {
            print(purchaseArray[i].getLotto())
        }
    }
    
    //로또 통계를 출력하는 함수
    public func outputWinResult(countArray: [Int], profit: Double) {
        print("당첨 통계")
        print("-----------")
        print("3개 일치 (5000원) - \(countArray[0])")
        print("4개 일치 (50000원) - \(countArray[1])")
        print("5개 일치 (1500000원) - \(countArray[2])")
        print("6개 일치 (2000000000원) - \(countArray[3])")
        print("총 수익률은 \(profit)%입니다.")
    }
}
