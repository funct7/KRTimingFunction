//
//  KRTimingFunction.swift
//  Pods
//
//  Created by Joshua Park on 6/15/16.
//
//

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

public struct TimingFunction {
    static func Linear(rt rt: Double, b: Double, c: Double) -> Double {
        return rt * c + b
    }
    // Quad
    static func EaseInQuad(rt rt: Double, b: Double, c: Double) -> Double {
        return c * rt*rt + b
    }
    
    static func EaseOutQuad(rt rt: Double, b: Double, c: Double) -> Double {
        return -c * rt*(rt-2) + b
    }
    
    static func EaseInOutQuad(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        if (rt*=2.0) < 1 { return c/2 * rt*rt + b }
        return -c/2 * ((rt-=1.0)*(rt-2) - 1) + b
    }
    
    // Cubic
    static func EaseInCubic(rt rt: Double, b: Double, c: Double) -> Double {
        return c * rt*rt*rt + b
    }
    static func EaseOutCubic(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        return c*((rt-=1)*rt*rt + 1) + b
    }
    static func EaseInOutCubic(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        if (rt*=2.0) < 1 { return c/2 * rt*rt*rt + b }
        return c/2 * ((rt-=2)*rt*rt + 2) + b
    }
    // Quart
    static func EaseInQuart(rt rt: Double, b: Double, c: Double) -> Double {
        return c * rt*rt*rt*rt + b;
    }
    static func EaseOutQuart(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        return -c * ((rt-=1)*rt*rt*rt - 1) + b;
    }
    static func EaseInOutQuart(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        if (rt*=2.0) < 1 { return c/2*rt*rt*rt*rt + b }
        return -c/2 * ((rt-=2)*rt*rt*rt - 2) + b;
    }
    // Quint
    static func EaseInQuint(rt rt: Double, b: Double, c: Double) -> Double {
        return c * rt*rt*rt*rt*rt + b
    }
    static func EaseOutQuint(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        return c * ((rt-=1)*rt*rt*rt*rt + 1) + b;
    }
    static func EaseInOutQuint(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        if (rt*=2.0) < 1 { return c/2 * rt*rt*rt*rt*rt + b }
        return c/2 * ((rt-=2)*rt*rt*rt*rt + 2) + b;
    }
    // Sine
    static func EaseInSine(rt rt: Double, b: Double, c: Double) -> Double {
        return -c * cos(rt * (M_PI_2)) + c + b
    }
    static func EaseOutSine(rt rt: Double, b: Double, c: Double) -> Double {
        return c * sin(rt * (M_PI_2)) + b
    }
    static func EaseInOutSine(rt rt: Double, b: Double, c: Double) -> Double {
        return -c/2 * (cos(M_PI*rt) - 1) + b;
    }
    // Expo
    static func EaseInExpo(rt rt: Double, b: Double, c: Double) -> Double {
        return rt == 0.0 ? b : c * pow(2, 10 * (rt - 1)) + b
    }
    static func EaseOutExpo(rt rt: Double, b: Double, c: Double) -> Double {
        return rt == 1.0 ? b+c : c * (-pow(2, -10 * rt) + 1) + b
    }
    static func EaseInOutExpo(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        if rt == 0.0 { return b }
        if rt == 1.0 { return b+c }
        if (rt*=2.0) < 1 { return c/2 * pow(2, 10 * (rt - 1)) + b }
        return c/2 * (-pow(2, -10 * (rt-=1)) + 2) + b
    }
    // Circ
    static func EaseInCirc(rt rt: Double, b: Double, c: Double) -> Double {
        return -c * (sqrt(1 - rt*rt) - 1) + b;
    }
    static func EaseOutCirc(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        return c * sqrt(1 - (rt-=1)*rt) + b;
    }
    static func EaseInOutCirc(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        if (rt*=2.0) < 1 { return -c/2 * (sqrt(1 - rt*rt) - 1) + b }
        return c/2 * (sqrt(1 - (rt-=1)*rt) + 1) + b;
    }
    // Elastic
    static func EaseInElastic(rt rt: Double, b: Double, c: Double, d: Double) -> Double {
        var rt = rt
        var s = 1.70158
        let p = d * 0.3
        var a = c
        if rt == 0.0 { return b }
        if rt == 1.0 { return b+c }
        if a < abs(c) { (a, s) = (c, p / 4.0) }
        else          { s = p / (2*M_PI) * asin(c/a) }
        return -(a * pow(2, 10 * (rt-=1)) * sin((rt*d-s) * (2*M_PI) / p)) + b
    }
    static func EaseOutElastic(rt rt: Double, b: Double, c: Double, d: Double) -> Double {
        var s = 1.70158
        let p = d * 0.3
        var a = c
        if rt == 0.0 { return b }
        if rt == 1.0 { return b+c }
        if a < abs(c) { (a, s) = (c, p/4) }
        else          { s = p / (2*M_PI) * asin(c/a) }
        return a * pow(2,-10 * rt) * sin((rt*d-s) * (2*M_PI) / p) + c + b
    }
    static func EaseInOutElastic(rt rt: Double, b: Double, c: Double, d: Double) -> Double {
        var rt = rt
        var s = 1.70158
        let p = d * 0.45
        var a = c
        if rt == 0.0 { return b }
        if (rt*=2.0) == 2.0 { return b+c }
        if a < abs(c) { (a, s) = (c, p/4) }
        else          { s = p / (2*M_PI) * asin(c/a) }
        if rt < 1 { return -0.5 * (a * pow(2, 10 * (rt-=1)) * sin((rt*d-s) * (2*M_PI) / p)) + b }
        return a * pow(2,-10 * (rt-=1)) * sin((rt*d-s) * (2*M_PI) / p) * 0.5 + c + b
    }
    // Back
    static func EaseInBack(rt rt: Double, b: Double, c: Double) -> Double {
        let s = 1.70158
        return c * rt*rt*((s+1) * rt - s) + b
    }
    static func EaseOutBack(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        let s = 1.70158
        return c * ((rt-=1)*rt*((s+1) * rt + s) + 1) + b
    }
    static func EaseInOutBack(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        var s = 1.70158 * 1.525
        if ((rt*=2.0) < 1) { return c/2 * (rt*rt*((s+1)*rt - s)) + b }
        return c/2 * ((rt-=2)*rt*(((s*=1.525)+1)*rt + s) + 2) + b
    }
    // Bounce
    static func EaseInBounce(rt rt: Double, b: Double, c: Double) -> Double {
        return c - TimingFunction.EaseOutBounce(rt: 1.0-rt, b: 0, c: c) + b
    }
    static func EaseOutBounce(rt rt: Double, b: Double, c: Double) -> Double {
        var rt = rt
        if rt < 1/2.75 {
            return c * (7.5625*rt*rt) + b
        } else if rt < 2/2.75 {
            return c * (7.5625*(rt-=(1.5/2.75))*rt + 0.75) + b
        } else if rt < 2.5/2.75 {
            return c * (7.5625*(rt-=(2.25/2.75))*rt + 0.9375) + b
        } else {
            return c * (7.5625*(rt-=(2.625/2.75))*rt + 0.984375) + b;
        }
    }
    static func EaseInOutBounce(rt rt: Double, b: Double, c: Double) -> Double {
        if rt < 0.5 { return TimingFunction.EaseInBounce(rt: rt*2, b: 0, c: c) * 0.5 + b }
        return TimingFunction.EaseOutBounce(rt: -rt*2, b: 0, c: c) * 0.5 + c*0.5 + b
    }
}

/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * TERMS OF USE - jQuery Easing
 *
 * Open source under the BSD License.
 *
 * Copyright Â© 2008 George McGinley Smith
 * All rights reserved.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */
