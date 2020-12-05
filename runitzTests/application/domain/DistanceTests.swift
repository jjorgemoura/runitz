//
//  Copyright © 2020  Jorge Moura . All rights reserved.

import XCTest
@testable import runitz

class DistanceTests: XCTestCase {

    private let distanceFifteen: Double = 15
    private let distanceMarathon: Double = 42.26
    private let distanceForteeners: Double = 14000

    func testFifteenKmToKmsIsSame() {
        let sut = Distance(value: distanceFifteen, unit: .km, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .km), 15)
    }

    func testFifteenKmToMilesIs9() {
        let sut = Distance(value: distanceFifteen, unit: .km, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .mile).round(to: 1), 9.3)
    }

    func testMarathonKmToMilesIs26() {
        let sut = Distance(value: distanceMarathon, unit: .km, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .mile).round(to: 2), 26.26)
    }

    func testFifteenMilesToMilesIsSame() {
        let sut = Distance(value: distanceFifteen, unit: .mile, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .mile), 15)
    }

    func testFifteenMilesToKmsIs24() {
        let sut = Distance(value: distanceFifteen, unit: .mile, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .km).round(to: 1), 24.1)
    }

    func testMarathonMilesToKmsIs68() {
        let sut = Distance(value: distanceMarathon, unit: .mile, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .km).round(to: 0), 68)
    }

    func testForteenerFeetToFeetIsSame() {
        let sut = Distance(value: distanceForteeners, unit: .feet, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .feet), 14000)
    }

    func testForteenerFeetToKmsIs4Point3() {
        let sut = Distance(value: distanceForteeners, unit: .feet, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .km).round(to: 1), 4.3)
    }

    func testForteenerFeetToMilesIs2Point7() {
        let sut = Distance(value: distanceForteeners, unit: .feet, isFavourite: true)

        XCTAssertEqual(sut.distance(in: .mile).round(to: 1), 2.7)
    }
}
