//
//  main.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

let lottoController = LottoController()
let inputData = InputData()
let resultPrinter = ResultPrinter()

print("구입금액을 입력해 주세요.")

let input = inputData.setPurchasedMoney()
let purchasedLottos = lottoController.buyLottos(inputString: input)
resultPrinter.printPurchasedLottos(purchasedLottos: purchasedLottos)

print("지난 주 당첨 번호를 입력해 주세요.")

let winLotto = inputData.setLastWinLotto()
let collectLottoCounts = lottoController.checkWinLottoTime(winLotto: winLotto)
resultPrinter.printCompareNumResult(counts: collectLottoCounts)
resultPrinter.printRevenuePercent(counts: collectLottoCounts)





