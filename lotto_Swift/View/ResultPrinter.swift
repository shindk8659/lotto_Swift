//
//  ResultPrinter.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/21/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class ResultPrinter {
   
    public func printLottoCount(lottoCount: Int) {
        print("\(lottoCount)개를 구매했습니다.")
    }
    
    public func printPurchasedLottos(purchasedLottos :[Lotto]) {
        for i in 0..<purchasedLottos.count {
            print(purchasedLottos[i].lottoNum)
        }
    }
    
    public func printCompareNumResult(counts:[Int]) {
        print("3개 일치 (5000원)- \(counts[0])개")
        print("4개 일치 (50000원)- \(counts[1])개")
        print("5개 일치 (1500000원)- \(counts[2])개")
        print("6개 일치 (2000000000원)- \(counts[3])개")
    }
    
    public func printRevenuePercent(counts:[Int]) {
        let wholeWinPrice:Int = (5000*counts[0])+(50000*counts[1])+(1500000*counts[2])+(2000000000*counts[3])
        let investPrice = Int(input)
        let revenuePercent = (Double(wholeWinPrice)/Double(investPrice!)*100)
        print("총 수익률은 \(revenuePercent)%입니다.")
    }
}
