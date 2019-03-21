//
//  lotto_Swift_UnitTest.swift
//  lotto_Swift_UnitTest
//
//  Created by 신동규 on 3/10/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import XCTest

class LottoGenerator_Test: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    //LottoGenerator test코드
    func test로또생성기() {
        //given
        let expectedLotto = Lotto()
        expectedLotto.lottoNum = [1,2,3,4,5,6]
        let expectedValue = expectedLotto.lottoNum
        
        //when
        let lotto = Lotto()
        let fiexdLottoGenerator = FixedLottoGenerator()
        let fiexdLotto =
            fiexdLottoGenerator.generateLottoNums(lotto: lotto)
        let value = fiexdLotto.lottoNum

        //then
        XCTAssertEqual(expectedValue,value , "임의의 수가 같이나 않습니다.")
    }
    
}
