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

    func test로또구매개수확인() {
        let expectedValue: Int = 2
        
        let testValue: Int = 2000
        let purchaseLotto = PurchaseLotto(money: testValue).getLotto()
        
        XCTAssertEqual(expectedValue, purchaseLotto, "구매 개수가 일치하지 않습니다.")
    }

    //FIXME: 수정 중
    func test로또일치개수확인() {
        let expectedValue: Int = 6
        
        let testWinValue: [Int] = [1, 1, 1, 1, 1, 1]
        let lotto = Lotto()
        
        let result = LottoStatistics(win: testWinValue, purchase: [lotto])
        let resultValue: Int = result.checkArray(purchaseArray: lotto.getLotto())
        
        XCTAssertEqual(expectedValue, resultValue, "로또 일치 개수가 일치하지 않습니다.")
    }

}
