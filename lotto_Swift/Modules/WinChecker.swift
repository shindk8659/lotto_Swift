//
//  WinChecker.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/16/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class WinChecker {
    
    public var winLottoNum = [Int]()
    private var treeCount = 0
    private var fourCount = 0
    private var fiveCount = 0
    private var sixCount = 0
    
    public func getCollectLottoCountArray(purchasedLottos:[Lotto]) -> [Int] {
        var collectLottoCounts = [Int]()
    
        for i in 0..<purchasedLottos.count {
            let purchasedLotto:Lotto = purchasedLottos[i]
            _ = checkCollectedUpperTree(purchasedLotto: purchasedLotto)
            
        }
        collectLottoCounts.append(treeCount)
        collectLottoCounts.append(fourCount)
        collectLottoCounts.append(fiveCount)
        collectLottoCounts.append(sixCount)
        return collectLottoCounts
    }
    
    private func checkCollectedUpperTree(purchasedLotto:Lotto) -> Bool {
        switch compareLottos(purchasedLotto:purchasedLotto) {
        case 3:
            treeCount += 1
            return true
        case 4:
            fourCount += 1
            return true
        case 5:
            fiveCount += 1
            return true
        case 6:
            sixCount += 1
            return true
        default:
            return false
            
        }
    
    }
    
    private func compareLottos(purchasedLotto:Lotto) -> Int{
        var count :Int = 0
        for i in 0..<purchasedLotto.lottoNum.count {
            count += compareWithWinNum(index: i, purchasedLotto: purchasedLotto)
        }
        return count
        
    }
    
    private func compareWithWinNum(index:Int,purchasedLotto:Lotto) -> Int {
        var count :Int = 0
        for j in 0..<winLottoNum.count {
            let num = purchasedLotto.lottoNum[index]
            let winNum = winLottoNum[j]
            count += countingCollect(num: num, winNum: winNum)
        }
        return count
        
    }

    private func countingCollect(num:Int,winNum:Int) -> Int{
        if num == winNum {
            return 1
        }
        return 0
        
    }
    
    
}
