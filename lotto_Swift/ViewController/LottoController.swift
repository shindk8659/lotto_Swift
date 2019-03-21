//
//  LottoController.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class LottoController {
    
    private let resultPrinter = ResultPrinter()
    private var purchasedLottos = [Lotto]()
    
    public func buyLottos(inputString: String) {
       
        let lottoGenerator = LottoGenerator()
        let counter = Counter()
        let lottoCount = counter.countingInPrice(inputString: inputString)
        resultPrinter.printLottoCount(lottoCount: lottoCount)
      
        for _ in 0..<lottoCount {
            let lotto = Lotto()
            let generateLottoNum = lottoGenerator.generateLottoNums(lotto: lotto)
            purchasedLottos.append(generateLottoNum)
        }
        resultPrinter.printPurchasedLottos(purchasedLottos: purchasedLottos)
    }
    
    
    public func checkWinLotto(winLotto:String) {
        let winChecker = WinChecker()
        _ = winChecker.getWinLotto(winLotto: winLotto)
        let collectLottoCounts = winChecker.getCollectLottoCountArray(purchasedLottos: purchasedLottos)
        resultPrinter.printCompareNumResult(counts: collectLottoCounts)
        resultPrinter.printRevenuePercent(counts: collectLottoCounts)
 
    }
   
}
