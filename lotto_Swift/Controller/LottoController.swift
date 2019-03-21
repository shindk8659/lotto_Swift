//
//  LottoController.swift
//  lotto_Swift
//
//  Created by 김예은 on 16/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class LottoController {
    
    private let LOTTO_SIZE: Int = 6
    
    public func start(money: Int) {
        //로또를 구매
        let purchase = PurchaseLotto(money: money)
        let purchaseLottoArray = purchase.getTotalLotto()
        
        //구매한 로또 결과 출력
        let output = OutputView()
        output.outputPurchaseCount(money: money) //구매 갯수 출력
        output.outputTotalLotto(purchaseArray: purchaseLottoArray) //총 로또 번호 출력
        
        //지난주 로또 입력
        let input = inputView()
        let winLottoArray = input.inputLastWeekLotto(size: LOTTO_SIZE) //지난주 로또 입력
        
        //당첨 통계 출력
        let result = LottoStatistics(win: winLottoArray, purchase: purchaseLottoArray)
        result.startWin()
    }
}
