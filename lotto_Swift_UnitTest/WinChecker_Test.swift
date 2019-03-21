//
//  WinChecker_Test.swift
//  lotto_Swift_UnitTest
//
//  Created by 신동규 on 3/21/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import XCTest

class WinChecker_Test: XCTestCase {
    
    let winChecker = WinChecker()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
       
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test스트링에서로또인트배열변환() {
        //given
        let expectedValue = [1,2,3,4,5,6]
        
        //when
        let value = winChecker.getWinLotto(winLotto: "1, 2, 3, 4, 5, 6")
        
        
        //then
        XCTAssertEqual(expectedValue,value , "인트배열로 변환이 되지않았습니다.")
    }
    
    func test세개이상맞은로또들배열() {
        //given
        let expectedValue = [0,0,1,2]
        
        //when
        let lotto1 = Lotto()
        let lotto2 = Lotto()
        let lotto3 = Lotto()
        lotto1.lottoNum = [1,2,3,4,5,6]
        lotto2.lottoNum = [3,5,4,2,1,34]
        lotto3.lottoNum = [1,2,3,4,5,6]
        let lottos = [lotto1,lotto2,lotto3]
        
        _ = winChecker.getWinLotto(winLotto: "1, 2, 3, 4, 5, 6")
        let value = winChecker.getCollectLottoCountArray(purchasedLottos: lottos)
        
        //then
        XCTAssertEqual(expectedValue,value , "3,4,5,6 개맞은 로또개수의 배열이 정확하지 않습니다")
        
        
    }
    
    
    
    
    
}
