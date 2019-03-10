//
//  main.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

let lottoC = LottoController()
let count = Count()
print("구입금액을 입력해 주세요.")
let input: String = readLine() ?? ""
let lottoCount = count.countingInPrice(inputString: input)
lottoC.playLottoWithCount(count: lottoCount)


