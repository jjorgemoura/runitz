//
//  Copyright © 2020  Jorge Moura . All rights reserved.

import XCTest
@testable import runitz

class UnitTests: XCTestCase {

    func testKmToKmConvertionIsOne() {
        let sut = Unit.km

        let multiplicationFactor = sut.factor(to: .km)

        XCTAssertEqual(multiplicationFactor, 1)
    }

    func testKmToMileConvertionIsZeroSix() {
        let sut = Unit.km

        let multiplicationFactor = sut.factor(to: .mile)

        XCTAssertEqual(multiplicationFactor.round(to: 4), 0.6214.round(to: 4))
    }

    func testKmToFeetConvertionIsThreeTwoEighty() {
        let sut = Unit.km

        let multiplicationFactor = sut.factor(to: .feet)

        XCTAssertEqual(multiplicationFactor.round(to: 1), 3280.8.round(to: 1))
    }

    func testMileToKmConvertionIsOnePointSix() {
        let sut = Unit.mile

        let multiplicationFactor = sut.factor(to: .km)

        XCTAssertEqual(multiplicationFactor.round(to: 2), 1.61.round(to: 2))
    }

    func testMileToMileConvertionIsOne() {
        let sut = Unit.mile

        let multiplicationFactor = sut.factor(to: .mile)

        XCTAssertEqual(multiplicationFactor, 1)
    }

    func testMileToFeetConvertionIsFiveTwoEighty() {
        let sut = Unit.mile

        let multiplicationFactor = sut.factor(to: .feet)

        XCTAssertEqual(multiplicationFactor, 5280)
    }

    func testFeetToKmConvertionIsZeroPointXXXX() {
        let sut = Unit.feet

        let multiplicationFactor = sut.factor(to: .km)

        XCTAssertEqual(multiplicationFactor.round(to: 8), 0.00030480.round(to: 8))
    }

    func testFeetToMileConvertionIsZeroPintYYY() {
        let sut = Unit.feet

        let multiplicationFactor = sut.factor(to: .mile)

        XCTAssertEqual(multiplicationFactor.round(to: 8), 0.00018939.round(to: 8))
    }

    func testFeetToFeetConvertionIsOne() {
        let sut = Unit.feet

        let multiplicationFactor = sut.factor(to: .feet)

        XCTAssertEqual(multiplicationFactor, 1)
    }
}
