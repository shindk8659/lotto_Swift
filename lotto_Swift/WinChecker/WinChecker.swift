//
//  WinChecker.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/16/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class WinChecker {
    public var purchasedLotto = [Int]()
    private var winLottoNums = [Int]()
    private var treeCount = 0;
    private var fourCount = 0;
    private var fiveCount = 0;
    private var sixCount = 0;
    
    public func getWinLotto(winLotto:String) {
        let withoutSeperator = winLotto.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: " ", with: " ")
        winLottoNums =  withoutSeperator.components(separatedBy: " ").map { (value:String) -> Int in return Int(value) ?? 0}
    }
    
    public func printCompareResult() {
        print("3개 일치 (5000원)- \(treeCount)개")
        print("4개 일치 (50000원)- \(fourCount)개")
        print("5개 일치 (1500000원)- \(fiveCount)개")
        print("6개 일치 (2000000000원)- \(sixCount)개")
    }
    
    public func printRevenuePercent() {
        let wholeWinPrice:Int = (5000*treeCount)+(50000*fourCount)+(1500000*fiveCount)+(2000000000*sixCount)
        let investPrice = Int(input)
        let revenuePercent = (Double(wholeWinPrice)/Double(investPrice!)*100)
        print("총 수익률은 \(revenuePercent)%입니다.")
    }
    
    public func checkCollectedUpperTree() {
        switch compareLottos() {
        case 3:
            treeCount += 1
        case 4:
            fourCount += 1
        case 5:
            fiveCount += 1
        case 6:
            sixCount += 1
        default: break
            
        }
    }
    
    private func compareLottos() -> Int{
        var count :Int = 0
        for i in 0..<purchasedLotto.count {
            count += compareWinWithPerchased(index: i)
        }
        return count
        
    }
    
    private func compareWinWithPerchased(index:Int) -> Int {
        var count :Int = 0
        for j in 0..<winLottoNums.count {
            let lottoNum = purchasedLotto[index]
            let winLottoNum = winLottoNums[j]
            count += countingCollect(lottoNum: lottoNum, winLottoNum: winLottoNum)
        }
        return count
        
    }

    private func countingCollect(lottoNum:Int,winLottoNum:Int) -> Int{
        if lottoNum == winLottoNum {
            return 1
        }
        return 0
        
    }
    
    
}
