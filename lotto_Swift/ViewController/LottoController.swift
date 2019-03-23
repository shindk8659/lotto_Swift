//
//  LottoController.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class LottoController {

    private var purchasedLottos = [Lotto]()
    
    func buyLottos(inputString: String) -> [Lotto] {
       
        let lottoGenerator = LottoGenerator()
        let counter = Counter()
        let lottoCount = counter.countingInPrice(inputString: inputString)
        resultPrinter.printLottoCount(lottoCount: lottoCount)
      
        for _ in 0..<lottoCount {
            let lotto = Lotto()
            let generateLottoNum = lottoGenerator.generateLottoNums(lotto: lotto)
            purchasedLottos.append(generateLottoNum)
        }
        return purchasedLottos
       
    }
    
    public func checkWinLotto(winLotto:String) -> [Int]{
        let winChecker = WinChecker()
        let withoutSeperatorWinLotto = winLotto.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: " ", with: " ")
        winChecker.winLottoNum =  withoutSeperatorWinLotto.components(separatedBy: " ").map { (value:String) -> Int in return Int(value) ?? 0}
        return winChecker.getCollectLottoCountArray(purchasedLottos: purchasedLottos)
 
    }
   
}
