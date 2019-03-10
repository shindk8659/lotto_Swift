//
//  LottoController.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class LottoController {
    
    let lottoGenerator = LottoGenerator()
    let wholeNums = WholeNums()
    
    
    public func playLottoWithCount(count: Int) {
        let wholeNumArray = wholeNums.makeWholeNums()
        var generateLottoArray = [[Int]]()
        for _ in 0..<count {
            let generateLottoNum = lottoGenerator.generateLottoNum(wholenNums:wholeNumArray )
            generateLottoArray.append(generateLottoNum)
        }
        lottoResultPrint(generateLottoArray: generateLottoArray)
    }
    
    public func lottoResultPrint(generateLottoArray:[[Int]]) {
        for i in 0..<generateLottoArray.count{
           print(generateLottoArray[i])
        }
    }
    
    
    
    
    
}
