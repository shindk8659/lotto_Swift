//
//  LottoController.swift
//  lotto_Swift
//
//  Created by 김예은 on 16/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class LottoController {
    
    private let LOTTO_PRICE: Int = 1000
    private let LOTTO_SIZE: Int = 6
    
    public func start(money: Int) {
        let input = inputView()
        let output = OutputView()
        
        let purchaseNum = getLotto(money: money) 
        let purchaseLottoArray = controller.getTotalLotto(size: purchaseNum)
        
        output.outputPurchaseCount(money: money, purchaseNumber: purchaseNum) //구매 갯수 출력
        output.outputTotalLotto(purchaseArray: purchaseLottoArray) //총 로또 번호 출력
        
        let winLottoArray = input.inputLastWeekLotto(size: LOTTO_SIZE) //지난주 로또 입력
        print(winLottoArray) //테스트
        
        let result = LottoStatistics(win: winLottoArray, purchase: purchaseLottoArray)
        result.startWin()
    }
    
    //TODO: 분리하기
    //로또 구매 개수를 반환해주는 함수
    public func getLotto(money: Int) -> Int {
        return money / LOTTO_PRICE
    }
    
    //로또 구매 개수만큼 로또 생성하여 로또 객체를 반환하는 함수
    public func getTotalLotto(size: Int) -> [Lotto] {
        
        var lottos: [Lotto] = [Lotto]()
        for _ in 0..<size {
            let lotto = Lotto()
            lottos.append(lotto)
        }
        
        return lottos
    }
}
