//
//  LottoController.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class LottoController {
    
    public var input:String = ""
    private var lottoCount = 0
    private var purchasedLottos = [[Int]]()
    
    public func printLottoCount() {
        let counter = Counter()
        lottoCount = counter.countingInPrice(inputString: input)
        print("\(lottoCount)개를 구매했습니다.")
    }
    
    public func buyLottos() {
        
        let lottoGenerator = LottoGenerator()
        let wholeLottoNumMaker = WholeLottoNumMaker()
        let wholeLottoNums = wholeLottoNumMaker.makeWholeLottoNums()
       
        for _ in 0..<lottoCount {
            let generateLottoNum = lottoGenerator.generateLottoNums(wholenNums: wholeLottoNums)
            purchasedLottos.append(generateLottoNum)
        }
    }
    
    public func printPurchasedLottos() {
        for i in 0..<purchasedLottos.count {
           print(purchasedLottos[i])
        }
    }
    
    public func checkWinLotto(winLotto:String) {
        let winChecker = WinChecker()
        winChecker.getWinLotto(winLotto: winLotto)
        
        for i in 0..<purchasedLottos.count {
            winChecker.purchasedLotto = purchasedLottos[i]
            winChecker.checkCollectedUpperTree()
        }
        winChecker.printCompareResult()
        winChecker.printRevenuePercent()
        
    }
   
}
