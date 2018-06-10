//
//  SuanPuzzlesConfigStruct.swift
//  Suan
//
//  Created by David Hu on 2018/6/1.
//  Copyright © 2018 DavidHu. All rights reserved.
//

import UIKit

enum calculatingSigns {
    case plus
    case minus
    case multiply
    case divide
}

struct SuanPuzzlesConfig {
    var maxDigit: Int
    var calculations: [calculatingSigns]
    var timeLimit: Int
    var puzzlesNumber: Int
    
    init(maxDigit:Int, calculations:[calculatingSigns], timeLimit:Int, puzzlesNumber:Int) {
        self.maxDigit = maxDigit
        self.calculations = calculations
        self.timeLimit = timeLimit
        self.puzzlesNumber = puzzlesNumber
    }
}

//class SuanPuzzlesConfigStruct: NSObject {
//
//}
