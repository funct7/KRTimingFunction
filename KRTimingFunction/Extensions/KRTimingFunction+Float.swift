//
//  KRTimingFunction+Float.swift
//  Pods
//
//  Created by Joshua Park on 18/11/2016.
//
//

import Foundation

public extension TimingCurve {
    
    static func value(using function: TimingCurve, rt: Float, b: Float, c: Float, d: Float? = nil) -> Float {
        switch function {
        case .linear:           return Float(linear(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInSine:       return Float(easeInSine(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutSine:      return Float(easeOutSine(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutSine:    return Float(easeInOutSine(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInQuad:       return Float(easeInQuad(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutQuad:      return Float(easeOutQuad(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutQuad:    return Float(easeInOutQuad(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInCubic:      return Float(easeInCubic(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutCubic:     return Float(easeOutCubic(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutCubic:   return Float(easeInOutCubic(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInQuart:      return Float(easeInQuart(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutQuart:     return Float(easeOutQuart(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutQuart:   return Float(easeInOutQuart(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInQuint:      return Float(easeInQuint(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutQuint:     return Float(easeOutQuint(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutQuint:   return Float(easeInOutQuint(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInExpo:       return Float(easeInExpo(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutExpo:      return Float(easeOutExpo(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutExpo:    return Float(easeInOutExpo(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInCirc:       return Float(easeInCirc(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutCirc:      return Float(easeOutCirc(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutCirc:    return Float(easeInOutCirc(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInBack:       return Float(easeInBack(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutBack:      return Float(easeOutBack(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutBack:    return Float(easeInOutBack(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInElastic:    return Float(easeInElastic(rt: Double(rt), b: Double(b), c: Double(c), d: Double(d!)))
        case .easeOutElastic:   return Float(easeOutElastic(rt: Double(rt), b: Double(b), c: Double(c), d: Double(d!)))
        case .easeInOutElastic: return Float(easeInOutElastic(rt: Double(rt), b: Double(b), c: Double(c), d: Double(d!)))
            
        case .easeInBounce:     return Float(easeInBounce(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutBounce:    return Float(easeOutBounce(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutBounce:  return Float(easeInOutBounce(rt: Double(rt), b: Double(b), c: Double(c)))
        }
    }
    
}
