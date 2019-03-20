//
//  LottoStatistics.swift
//  lotto_Swift
//
//  Created by 김예은 on 16/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class LottoStatistics {
    
    private let winLotto: [Int]
    private let purchaseLotto: [Lotto]
    
    private let THREE_PRICE: Int = 5000
    private let FOUR_PRICE: Int = 50000
    private let FIVE_PRICE: Int = 1500000
    private let SIX_PRICE: Int = 2000000000
    
    private var threeTimes: Int = 0
    private var fourTimes: Int = 0
    private var fiveTimes: Int = 0
    private var sixTimes: Int = 0
    
    public init(win: [Int],purchase: [Lotto]) {
        winLotto = win
        purchaseLotto = purchase
    }
    
    //당첨 통계를 시작하는 함수
    public func startWin(){
       for i in 0..<purchaseLotto.count {
            let purchaseLottoArray = purchaseLotto[i].getLotto() //배열
            checkArray(purchaseArray: purchaseLottoArray)
        }
        
        let output = OutputView()
        let countArray: [Int] = [threeTimes, fourTimes, fiveTimes, sixTimes]
        output.outputWinResult(countArray: countArray, profit: getTotalProfit(money: money))
    }
    
    //당첨 번호 배열과 구매 번호 배열을 비교하는 함수
    public func checkArray(purchaseArray: [Int]){
        var check: Int = 0
        for i in 0..<winLotto.count {
            check += checkArrayElemnet(purchaseArray: purchaseArray, winLottoNumber: winLotto[i])
        }
        print(check)
        getCheckCount(check: check)
    }
    
    //당첨 번호 배열 원소와 구매 번호 배열 원소의 일치 여부를 카운트 하는 함수
    public func checkArrayElemnet(purchaseArray: [Int], winLottoNumber: Int) -> Int{
        var check: Int = 0
        for i in 0..<purchaseArray.count {
            check += matchLottoNumber(winNumber: winLottoNumber, purchaseNumber: purchaseArray[i])
        }
        return check
    }
    
    //당첨 번호와 구매 번호를 일치 여부를 확인하는 함수
    public func matchLottoNumber(winNumber: Int, purchaseNumber: Int) -> Int {
        if winNumber == purchaseNumber {
            return 1
        }
        
        return 0
    }
    
    //로또 번호 일치하는 카운트를 체크하는 함수
    public func getCheckCount(check: Int) {
        if check == 3 {
            threeTimes += 1
        }
        if check == 4 {
            fourTimes += 1
        }
        if check == 5 {
            fiveTimes += 1
        }
        if check == 6 {
            sixTimes += 1
        }
    }
    
    //수익률을 반환해주는 함수
    public func getTotalProfit(money: Int) -> Double {
        let sum: Int = (threeTimes * THREE_PRICE) + (fourTimes * FOUR_PRICE) + (fiveTimes * FIVE_PRICE) + (sixTimes * SIX_PRICE)
        let result: Double = (Double(sum) / Double(money)) * 100.0
        return result
    
    }
}
