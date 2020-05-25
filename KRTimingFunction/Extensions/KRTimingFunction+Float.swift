//
//  KRTimingFunction+Float.swift
//  Pods
//
//  Created by Joshua Park on 18/11/2016.
//
//

import Foundation

public extension TimingFunction {
    
    @available(*, deprecated)
    static func value(using function: TimingFunction, rt: Float, b: Float, c: Float, d: Float? = nil) -> Float {
        if let d = d {
            return Float(value(using: function, rt: Double(rt), b: Double(b), c: Double(c), d: Double(d)))
        } else {
            return Float(value(using: function, rt: Double(rt), b: Double(b), c: Double(c)))
        }
    }
    
}
