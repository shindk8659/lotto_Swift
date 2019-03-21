//
//  NumberMaker_Test.swift
//  lotto_Swift_UnitTest
//
//  Created by 신동규 on 3/21/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import XCTest

class NumberMaker_Test: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    //NumMaker test코드
    func test45숫자배열생성() {
        //given
        let wholeNums = NumMaker()
        let testValue = wholeNums.makeNumbers()
        
        //when
        let resultValue =  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45]
        
        //then
        XCTAssertEqual(testValue, resultValue , "45개의 숫자 배열이 아닙니다")
    }
    
    
}
