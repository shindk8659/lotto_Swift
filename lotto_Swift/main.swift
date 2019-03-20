//
//  main.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

let input = inputView()
let money = input.inputPurchase()

let controller = LottoController()
controller.start(money: money)





