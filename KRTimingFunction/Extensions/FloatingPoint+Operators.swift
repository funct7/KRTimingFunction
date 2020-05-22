//
//  FloatingPoint+Operators.swift
//  KRTimingFunction
//
//  Created by Josh Woomin Park on 22/05/2020.
//

import UIKit

extension Double {
    
    static func -= (lhs: inout Double, rhs: Double) -> Double {
        lhs = lhs - rhs
        return lhs
    }

    static func *= (lhs: inout Double, rhs: Double) -> Double {
        lhs = lhs * rhs
        return lhs
    }
    
}

extension CGFloat {
    
    static func -= (lhs: inout CGFloat, rhs: CGFloat) -> CGFloat {
        lhs = lhs - rhs
        return lhs
    }

    static func *= (lhs: inout CGFloat, rhs: CGFloat) -> CGFloat {
        lhs = lhs * rhs
        return lhs
    }
    
}


extension Float {
    
    static func -= (lhs: inout Float, rhs: Float) -> Float {
        lhs = lhs - rhs
        return lhs
    }

    static func *= (lhs: inout Float, rhs: Float) -> Float {
        lhs = lhs * rhs
        return lhs
    }
    
}
