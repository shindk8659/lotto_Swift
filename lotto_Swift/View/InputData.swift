//
//  InputData.swift
//  lotto_Swift
//
//  Created by 신동규 on 3/21/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class InputData {
    
    public func setPurchasedMoney() -> String {
        return readLine() ?? ""
    }
    
    public func setLastWinLotto() ->String {
        return readLine() ?? ""
    }
}
