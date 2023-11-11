//
//  Color.swift
//  Presentation
//
//  Created by Lee Myeonghwan on 2023/11/09.
//  Copyright © 2023 gb. All rights reserved.
//

import UIKit

public enum AppColor: String {
    case BG_Default
}

extension UIColor {
    
    static let BG_Default = makeColor(.BG_Default)
    
}

extension UIColor {
    
    static func makeColor(_ color: AppColor) -> UIColor {
        return UIColor(named: color.rawValue, in: Bundle.module, compatibleWith: nil) ?? UIColor()
    }

}
