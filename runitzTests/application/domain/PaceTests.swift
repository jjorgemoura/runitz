//
//  Copyright © 2020  Jorge Moura . All rights reserved.

import XCTest
@testable import runitz

class PaceTests: XCTestCase {

    private let fiveMinPace: TimeInterval = 300
    private let sixMinFifteenPace: TimeInterval = 375
    private let elevenMinPace: Double = 660

    func testFiveMinKmToKmIsSame() {
        let sut = Pace(seconds: fiveMinPace, unit: .km)

        XCTAssertEqual(sut.pace(in: .km), fiveMinPace)
    }

    func testFiveMinKmToMileIsSame() {
        let sut = Pace(seconds: fiveMinPace, unit: .km)

        XCTAssertEqual(sut.pace(in: .mile).round(to: 0), 483)
    }

    func testSixFifteenMinKmToMileIsSame() {
        let sut = Pace(seconds: sixMinFifteenPace, unit: .km)

        XCTAssertEqual(sut.pace(in: .mile).round(to: 0), 604)
    }

    func testFiveMinMileToMileIsSame() {
        let sut = Pace(seconds: fiveMinPace, unit: .mile)

        XCTAssertEqual(sut.pace(in: .mile), fiveMinPace)
    }

    func testSixFifteenMinMileToKmIsSame() {
        let sut = Pace(seconds: sixMinFifteenPace, unit: .mile)

        XCTAssertEqual(sut.pace(in: .km).round(to: 0), 233)
    }

    func testElevenMinMileToKmIsSame() {
        let sut = Pace(seconds: elevenMinPace, unit: .mile)

        XCTAssertEqual(sut.pace(in: .km).round(to: 0), 410)
    }
}
