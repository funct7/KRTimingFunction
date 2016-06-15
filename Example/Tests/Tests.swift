import UIKit
import XCTest
@testable import KRTimingFunction

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let date = NSDate()
        for i in 0 ..< 10 {
            let param = (12.0+Double(i), 73.0+Double(i), 0.0, 1.0)
            let functions: [TimingFunction] = [
                //        .Linear(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInQuad(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutQuad(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutQuad(rt: param.0 / param.1, b: param.2, c: param.3),
                
                .EaseInCubic(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutCubic(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutCubic(rt: param.0 / param.1, b: param.2, c: param.3),
                
                .EaseInQuart(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutQuart(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutQuart(rt: param.0 / param.1, b: param.2, c: param.3),
                // Quint
                .EaseInQuint(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutQuint(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutQuint(rt: param.0 / param.1, b: param.2, c: param.3),
                // Sine
                .EaseInSine(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutSine(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutSine(rt: param.0 / param.1, b: param.2, c: param.3),
                // Expo
                .EaseInExpo(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutExpo(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutExpo(rt: param.0 / param.1, b: param.2, c: param.3),
                // Circ
                .EaseInCirc(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutCirc(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutCirc(rt: param.0 / param.1, b: param.2, c: param.3),
                // Elastic
                .EaseInElastic(rt: param.0 / param.1, b: param.2, c: param.3, d: param.1),
                .EaseOutElastic(rt: param.0 / param.1, b: param.2, c: param.3, d: param.1),
                .EaseInOutElastic(rt: param.0 / param.1, b: param.2, c: param.3, d: param.1),
                // Back
                .EaseInBack(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutBack(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutBack(rt: param.0 / param.1, b: param.2, c: param.3),
                // Bounce
                .EaseInBounce(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseOutBounce(rt: param.0 / param.1, b: param.2, c: param.3),
                .EaseInOutBounce(rt: param.0 / param.1, b: param.2, c: param.3),
                ]
            TimingFunction.evaluate(f)
        }
        print(NSDate().timeIntervalSinceDate(date))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
