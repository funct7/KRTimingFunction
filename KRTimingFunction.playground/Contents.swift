import UIKit

private func += (inout lhs: Double, rhs: Double) -> Double {
    lhs = lhs + rhs
    return lhs
}

private func -= (inout lhs: Double, rhs: Double) -> Double {
    lhs = lhs - rhs
    return lhs
}

private func *= (inout lhs: Double, rhs: Double) -> Double {
    lhs = lhs * rhs
    return lhs
}

private func /= (inout lhs: Double, rhs: Double) -> Double {
    lhs = lhs / rhs
    return lhs
}

enum TimingFunction {
    case Linear(rt: Double, b: Double, c: Double)
    // Quad
    case EaseInQuad(rt: Double, b: Double, c: Double)
    case EaseOutQuad(rt: Double, b: Double, c: Double)
    case EaseInOutQuad(rt: Double, b: Double, c: Double)
    // Cubic
    case EaseInCubic(rt: Double, b: Double, c: Double)
    case EaseOutCubic(rt: Double, b: Double, c: Double)
    case EaseInOutCubic(rt: Double, b: Double, c: Double)
    // Quart
    case EaseInQuart(rt: Double, b: Double, c: Double)
    case EaseOutQuart(rt: Double, b: Double, c: Double)
    case EaseInOutQuart(rt: Double, b: Double, c: Double)
    // Quint
    case EaseInQuint(rt: Double, b: Double, c: Double)
    case EaseOutQuint(rt: Double, b: Double, c: Double)
    case EaseInOutQuint(rt: Double, b: Double, c: Double)
    // Sine
    case EaseInSine(rt: Double, b: Double, c: Double)
    case EaseOutSine(rt: Double, b: Double, c: Double)
    case EaseInOutSine(rt: Double, b: Double, c: Double)
    // Expo
    case EaseInExpo(rt: Double, b: Double, c: Double)
    case EaseOutExpo(rt: Double, b: Double, c: Double)
    case EaseInOutExpo(rt: Double, b: Double, c: Double)
    // Circ
    case EaseInCirc(rt: Double, b: Double, c: Double)
    case EaseOutCirc(rt: Double, b: Double, c: Double)
    case EaseInOutCirc(rt: Double, b: Double, c: Double)
    // Elastic
    case EaseInElastic(rt: Double, b: Double, c: Double, d: Double)
    case EaseOutElastic(rt: Double, b: Double, c: Double, d: Double)
    case EaseInOutElastic(rt: Double, b: Double, c: Double, d: Double)
    // Back
    case EaseInBack(rt: Double, b: Double, c: Double)
    case EaseOutBack(rt: Double, b: Double, c: Double)
    case EaseInOutBack(rt: Double, b: Double, c: Double)
    // Bounce
    case EaseInBounce(rt: Double, b: Double, c: Double)
    case EaseOutBounce(rt: Double, b: Double, c: Double)
    case EaseInOutBounce(rt: Double, b: Double, c: Double)
    
    static func evaluate(f: TimingFunction) -> Double {
        switch f {
            
            // Linear
            
        case .Linear(rt: let rt, b: let b, c: let c):
            return rt * c + b
            
            // Quad
            
        case .EaseInQuad(rt: let rt, b: let b, c: let c):
            return c * rt*rt + b
            
        case .EaseOutQuad(rt: let rt, b: let b, c: let c):
            return -c * rt*(rt-2) + b
            
        case .EaseInOutQuad(rt: var rt, b: let b, c: let c):
            if (rt*=2.0) < 1 { return c/2 * rt*rt + b }
            return -c/2 * ((rt-=1.0)*(rt-2) - 1) + b
            
            // Cubic
            
        case .EaseInCubic(rt: let rt, b: let b, c: let c):
            return c * rt*rt*rt + b
            
        case .EaseOutCubic(rt: var rt, b: let b, c: let c):
            return c*((rt-=1)*rt*rt + 1) + b
            
        case .EaseInOutCubic(rt: var rt, b: let b, c: let c):
            if (rt*=2.0) < 1 { return c/2 * rt*rt*rt + b }
            return c/2 * ((rt-=2)*rt*rt + 2) + b
            
            // Quart
            
        case .EaseInQuart(rt: let rt, b: let b, c: let c):
            return c * rt*rt*rt*rt + b;
            
        case .EaseOutQuart(rt: var rt, b: let b, c: let c):
            return -c * ((rt-=1)*rt*rt*rt - 1) + b;
            
        case .EaseInOutQuart(rt: var rt, b: let b, c: let c):
            if (rt*=2.0) < 1 { return c/2*rt*rt*rt*rt + b }
            return -c/2 * ((rt-=2)*rt*rt*rt - 2) + b;
            
            // Quint
            
        case .EaseInQuint(rt: let rt, b: let b, c: let c):
            return c * rt*rt*rt*rt*rt + b;
            
        case .EaseOutQuint(rt: var rt, b: let b, c: let c):
            return c * ((rt-=1)*rt*rt*rt*rt + 1) + b;
            
        case .EaseInOutQuint(rt: var rt, b: let b, c: let c):
            if (rt*=2.0) < 1 { return c/2 * rt*rt*rt*rt*rt + b }
            return c/2 * ((rt-=2)*rt*rt*rt*rt + 2) + b;
            
            // Sine
            
        case .EaseInSine(rt: let rt, b: let b, c: let c):
            return -c * cos(rt * (M_PI_2)) + c + b
            
        case .EaseOutSine(rt: let rt, b: let b, c: let c):
            return c * sin(rt * (M_PI_2)) + b
            
        case .EaseInOutSine(rt: let rt, b: let b, c: let c):
            return -c/2 * (cos(M_PI*rt) - 1) + b;
            
            // Expo
            
        case .EaseInExpo(rt: let rt, b: let b, c: let c):
            return rt == 0.0 ? b : c * pow(2, 10 * (rt - 1)) + b
            
        case .EaseOutExpo(rt: let rt, b: let b, c: let c):
            return rt == 1.0 ? b+c : c * (-pow(2, -10 * rt) + 1) + b
            
        case .EaseInOutExpo(rt: var rt, b: let b, c: let c):
            if rt == 0.0 { return b }
            if rt == 1.0 { return b+c }
            if (rt*=2.0) < 1 { return c/2 * pow(2, 10 * (rt - 1)) + b }
            return c/2 * (-pow(2, -10 * (rt-=1)) + 2) + b
            
            // Circ
            
        case .EaseInCirc(rt: let rt, b: let b, c: let c):
            return -c * (sqrt(1 - rt*rt) - 1) + b;
            
        case .EaseOutCirc(rt: var rt, b: let b, c: let c):
            return c * sqrt(1 - (rt-=1)*rt) + b;
            
        case .EaseInOutCirc(rt: var rt, b: let b, c: let c):
            if (rt*=2.0) < 1 { return -c/2 * (sqrt(1 - rt*rt) - 1) + b }
            return c/2 * (sqrt(1 - (rt-=1)*rt) + 1) + b;
            
            // Elastic
            
        case .EaseInElastic(rt: var rt, b: let b, c: let c, d: let d):
            var s = 1.70158
            let p = d * 0.3
            var a = c
            if rt == 0.0 { return b }
            if rt == 1.0 { return b+c }
            if a < abs(c) { (a, s) = (c, p / 4.0) }
            else          { s = p / (2*M_PI) * asin(c/a) }
            return -(a * pow(2, 10 * (rt-=1)) * sin((rt*d-s) * (2*M_PI) / p)) + b
            
        case .EaseOutElastic(rt: let rt, b: let b, c: let c, d: let d):
            var s = 1.70158
            let p = d * 0.3
            var a = c
            if rt == 0.0 { return b }
            if rt == 1.0 { return b+c }
            if a < abs(c) { (a, s) = (c, p/4) }
            else          { s = p / (2*M_PI) * asin(c/a) }
            return a * pow(2,-10 * rt) * sin((rt*d-s) * (2*M_PI) / p) + c + b

        case .EaseInOutElastic(rt: var rt, b: let b, c: let c, d: let d):
            var s = 1.70158
            let p = d * 0.45
            var a = c
            if rt == 0.0 { return b }
            if (rt*=2.0) == 2.0 { return b+c }
            if a < abs(c) { (a, s) = (c, p/4) }
            else          { s = p / (2*M_PI) * asin(c/a) }
            if rt < 1 { return -0.5 * (a * pow(2, 10 * (rt-=1)) * sin((rt*d-s) * (2*M_PI) / p)) + b }
            return a * pow(2,-10 * (rt-=1)) * sin((rt*d-s) * (2*M_PI) / p) * 0.5 + c + b
            
        case .EaseInBack(rt: let rt, b: let b, c: let c):
            let s = 1.70158
            return c * rt*rt*((s+1) * rt - s) + b

        case .EaseOutBack(rt: var rt, b: let b, c: let c):
            let s = 1.70158
            return c * ((rt-=1)*rt*((s+1) * rt + s) + 1) + b

        case .EaseInOutBack(rt: var rt, b: let b, c: let c):
            var s = 1.70158 * 1.525
            if ((rt*=2.0) < 1) { return c/2 * (rt*rt*((s+1)*rt - s)) + b }
            return c/2 * ((rt-=2)*rt*(((s*=1.525)+1)*rt + s) + 2) + b

        case .EaseInBounce(rt: let rt, b: let b, c: let c):
            return c - evaluate(.EaseOutBounce(rt: 1.0-rt, b: 0, c: c)) + b

        case .EaseOutBounce(rt: var rt, b: let b, c: let c):
            if rt < 1/2.75 {
                return c * (7.5625*rt*rt) + b
            } else if rt < 2/2.75 {
                return c * (7.5625*(rt-=(1.5/2.75))*rt + 0.75) + b
            } else if rt < 2.5/2.75 {
                return c * (7.5625*(rt-=(2.25/2.75))*rt + 0.9375) + b
            } else {
                return c * (7.5625*(rt-=(2.625/2.75))*rt + 0.984375) + b;
            }

        case .EaseInOutBounce(rt: let rt, b: let b, c: let c):
            if rt < 0.5 { return evaluate(.EaseInBounce(rt: rt*2, b: 0, c: c)) * 0.5 + b }
            return evaluate(.EaseOutBounce(rt: -rt*2, b: 0, c: c)) * 0.5 + c*0.5 + b
        }
    }
}