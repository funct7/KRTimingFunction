//
//  KRTimingFunction+CGFloat.swift
//  Pods
//
//  Created by Joshua Park on 18/11/2016.
//
//

import Foundation

public extension TimingFunction {
    
    @available(*, deprecated)
    static func value(using function: TimingFunction, rt: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat? = nil) -> CGFloat {
        if let d = d {
            return CGFloat(value(using: function, rt: Double(rt), b: Double(b), c: Double(c), d: Double(d)))
        } else {
            return CGFloat(value(using: function, rt: Double(rt), b: Double(b), c: Double(c)))
        }
    }
    
}
