//
//  Lotto.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

protocol NumGeneratorDelegate {
    func generateLottoNum(wholenNums:[Int]) -> [Int]

}
