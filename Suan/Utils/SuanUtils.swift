//
//  SuanUtils.swift
//  Suan
//
//  Created by David Hu on 2018/6/10.
//  Copyright © 2018 DavidHu. All rights reserved.
//

import Foundation
import UIKit

/*
 Usage:
    let color = UIColor(red: 0xFF, green: 0xFF, blue: 0xFF)
    let color2 = UIColor(rgb: 0xFFFFFF)
 
    use alpha:
    let semitransparentBlack = UIColor(rgb: 0x000000).withAlphaComponent(0.5)

    let color = UIColor(red: 0xFF, green: 0xFF, blue: 0xFF, a: 0.5)
    let color2 = UIColor(rgb: 0xFFFFFF, a: 0.5)
 */
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(hex: Int) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF
        )
    }
    
    convenience init(red: Int, green: Int, blue: Int, a: Int = 0xFF) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(a) / 255.0
        )
    }
    
    // let's suppose alpha is the first component (ARGB)
    convenience init(ahex: Int) {
        self.init(
            red: (ahex >> 16) & 0xFF,
            green: (ahex >> 8) & 0xFF,
            blue: ahex & 0xFF,
            a: (ahex >> 24) & 0xFF
        )
    }
    
    class var suanYellow: UIColor {
        return UIColor.init(hex: 0xD9A84E)
    }
    
    class var suanLightBrown: UIColor {
        return UIColor.init(hex: 0xD9A84E)
    }
    
    class var suanGreyBrown: UIColor {
        return UIColor.init(hex: 0xD9A84E)
    }
    
    class var suanBrown: UIColor {
        return UIColor.init(hex: 0xD9A84E)
    }
    
    class var suanheavyBrown: UIColor {
        return UIColor.init(hex: 0xD9A84E)
    }
}

