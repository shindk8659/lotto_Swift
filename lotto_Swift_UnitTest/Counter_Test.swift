//
//  Counter_Test.swift
//  lotto_Swift_UnitTest
//
//  Created by 신동규 on 3/21/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import XCTest

class Counter_Test: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    //Counter test코드
    func test로또개수카운트() {
        //given
        let expectedValue = 4
        
        //when
        let counter = Counter()
        let value = counter.countingInPrice(inputString: "4000")
        
        //then
        XCTAssertEqual(expectedValue,value , "로또개수카운트가 맞지않습니다.")
    }
    
    
    
}
