//
//  KRTimingFunction+CGFloat.swift
//  Pods
//
//  Created by Joshua Park on 18/11/2016.
//
//

import Foundation

public extension TimingCurve {
    static func value(using function: TimingCurve, rt: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat? = nil) -> CGFloat {
        switch function {
        case .linear:           return CGFloat(linear(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInSine:       return CGFloat(easeInSine(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutSine:      return CGFloat(easeOutSine(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutSine:    return CGFloat(easeInOutSine(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInQuad:       return CGFloat(easeInQuad(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutQuad:      return CGFloat(easeOutQuad(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutQuad:    return CGFloat(easeInOutQuad(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInCubic:      return CGFloat(easeInCubic(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutCubic:     return CGFloat(easeOutCubic(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutCubic:   return CGFloat(easeInOutCubic(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInQuart:      return CGFloat(easeInQuart(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutQuart:     return CGFloat(easeOutQuart(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutQuart:   return CGFloat(easeInOutQuart(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInQuint:      return CGFloat(easeInQuint(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutQuint:     return CGFloat(easeOutQuint(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutQuint:   return CGFloat(easeInOutQuint(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInExpo:       return CGFloat(easeInExpo(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutExpo:      return CGFloat(easeOutExpo(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutExpo:    return CGFloat(easeInOutExpo(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInCirc:       return CGFloat(easeInCirc(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutCirc:      return CGFloat(easeOutCirc(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutCirc:    return CGFloat(easeInOutCirc(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInBack:       return CGFloat(easeInBack(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutBack:      return CGFloat(easeOutBack(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutBack:    return CGFloat(easeInOutBack(rt: Double(rt), b: Double(b), c: Double(c)))
            
        case .easeInElastic:    return CGFloat(easeInElastic(rt: Double(rt), b: Double(b), c: Double(c), d: Double(d!)))
        case .easeOutElastic:   return CGFloat(easeOutElastic(rt: Double(rt), b: Double(b), c: Double(c), d: Double(d!)))
        case .easeInOutElastic: return CGFloat(easeInOutElastic(rt: Double(rt), b: Double(b), c: Double(c), d: Double(d!)))
            
        case .easeInBounce:     return CGFloat(easeInBounce(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeOutBounce:    return CGFloat(easeOutBounce(rt: Double(rt), b: Double(b), c: Double(c)))
        case .easeInOutBounce:  return CGFloat(easeInOutBounce(rt: Double(rt), b: Double(b), c: Double(c)))
        }
    }
    
}
