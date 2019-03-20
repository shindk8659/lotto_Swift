//
//  NumberGenerator.swift
//  lotto_Swift
//
//  Created by 김예은 on 16/03/2019.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class NumberGenerator {
  
    private let MIN_NUMBER: Int = 1
    private let MAX_NUMBER: Int = 46
    private var randomNumber: Int
    
    public init() {
        self.randomNumber = 0
    }
    
    //랜덤으로 로또 번호를 반환해주는 함수
    public func getRandomNumber() -> Int {
        return Int.random(in: MIN_NUMBER ..< MAX_NUMBER)
    }
}
