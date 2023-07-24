//
//  UIColor+.swift
//  LEDBoard
//
//  Created by 박태현 on 2023/07/24.
//

import UIKit

extension UIColor {
    static var randomColor: UIColor? {
        let colorList: [UIColor] = [
            UIColor.red, UIColor.green, UIColor.blue, UIColor.systemMint,
            UIColor.orange, UIColor.purple, UIColor.systemPink, UIColor.yellow
        ]
        return colorList.randomElement()
    }
}
