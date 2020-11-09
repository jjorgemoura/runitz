//
//  Copyright © 2020  Jorge Moura . All rights reserved.

import XCTest
@testable import runitz

class UnitTests: XCTestCase {

    func testKmtoKmConvertionIsOne() {
        let sut = Unit.km

        let multiplicationFactor = sut.factor(to: .km)

        XCTAssertEqual(multiplicationFactor, 1)
    }

    func testKmtoMileConvertionIsOne() {
        let sut = Unit.km

        let multiplicationFactor = sut.factor(to: .mile)

        XCTAssertEqual(multiplicationFactor, 1 / Unit.mileInKm)
        XCTAssertEqual(multiplicationFactor.rounded(), 0.621_371.rounded())
    }

    func testMiletoKmConvertionIsOnePointSix() {
        let sut = Unit.mile

        let multiplicationFactor = sut.factor(to: .km)

        XCTAssertEqual(multiplicationFactor, Unit.mileInKm)
        XCTAssertEqual(multiplicationFactor, 1.609_344)
    }

    func testMiletoMileConvertionIsOne() {
        let sut = Unit.mile

        let multiplicationFactor = sut.factor(to: .mile)

        XCTAssertEqual(multiplicationFactor, 1)
    }
}
