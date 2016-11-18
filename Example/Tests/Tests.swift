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
        let date = Date()
        for i in 0 ..< 10 {
            let param = (12.0+Double(i), 73.0+Double(i), 0.0, 1.0)
            let functions: [TimingFunction] = [
                //        .Linear(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInQuad(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutQuad(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutQuad(rt: param.0 / param.1, b: param.2, c: param.3),
                
                .easeInCubic(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutCubic(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutCubic(rt: param.0 / param.1, b: param.2, c: param.3),
                
                .easeInQuart(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutQuart(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutQuart(rt: param.0 / param.1, b: param.2, c: param.3),
                // Quint
                .easeInQuint(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutQuint(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutQuint(rt: param.0 / param.1, b: param.2, c: param.3),
                // Sine
                .easeInSine(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutSine(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutSine(rt: param.0 / param.1, b: param.2, c: param.3),
                // Expo
                .easeInExpo(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutExpo(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutExpo(rt: param.0 / param.1, b: param.2, c: param.3),
                // Circ
                .easeInCirc(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutCirc(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutCirc(rt: param.0 / param.1, b: param.2, c: param.3),
                // Elastic
                .easeInElastic(rt: param.0 / param.1, b: param.2, c: param.3, d: param.1),
                .easeOutElastic(rt: param.0 / param.1, b: param.2, c: param.3, d: param.1),
                .easeInOutElastic(rt: param.0 / param.1, b: param.2, c: param.3, d: param.1),
                // Back
                .easeInBack(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutBack(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutBack(rt: param.0 / param.1, b: param.2, c: param.3),
                // Bounce
                .easeInBounce(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeOutBounce(rt: param.0 / param.1, b: param.2, c: param.3),
                .easeInOutBounce(rt: param.0 / param.1, b: param.2, c: param.3),
                ]
            TimingFunction.evaluate(f)
        }
        print(Date().timeIntervalSince(date))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
