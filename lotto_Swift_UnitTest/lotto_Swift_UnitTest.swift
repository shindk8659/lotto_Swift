//
//  lotto_Swift_UnitTest.swift
//  lotto_Swift_UnitTest
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import XCTest

class lotto_Swift_UnitTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test45숫자배열생성() {
        //given
        let wholeNums = WholeNums()
        let testValue = wholeNums.makeWholeNums()
        
        //when
        var resultValue = [Int]()
        for i in 1...45 {
            resultValue.append(i)
        }
        
            //[1,2,3,4,5,6,7,8,9,10,11,12]
        
        //then
        XCTAssertEqual(testValue, resultValue , "45개의 숫자 배열이 아닙니다")
    }
    
    func test로또생성() {
        //given
      
        let lottoGenerator = LottoGenerator()
        let fiexdLottoGenerator = FixedLottoGenerator()
      
        //when
        let fiexdLottoNums = fiexdLottoGenerator.generateLottoNum(wholenNums: [6,5,4,3,2,1])
        let lottoNums = lottoGenerator.generateLottoNum(wholenNums: [1,2,3,4,5,6])
        
        //then
        print(fiexdLottoNums)
        print(lottoNums)
        XCTAssertEqual(fiexdLottoNums,lottoNums , "임의의 수가 같이나옵니다.")
    }


    
}
