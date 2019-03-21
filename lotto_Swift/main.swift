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
print("구입금액을 입력해 주세요.")
let input = inputData.setPurchasedMoney()
lottoController.buyLottos(inputString: input)
print("지난 주 당첨 번호를 입력해 주세요.")
let winLotto = inputData.setLastWinLotto()
lottoController.checkWinLotto(winLotto: winLotto)





