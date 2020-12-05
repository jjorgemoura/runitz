//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import XCTest
@testable import runitz

class DoubleExtensionsTests: XCTestCase {

    func testRoundBigNumberToZeroDecimals() {
        XCTAssertEqual(Double(3242345).round(to: 0), 3242345)
    }

    func testRoundSmallNumberToZeroDecimals() {
        XCTAssertEqual(Double(45).round(to: 0), 45)
    }

    func testRoundOneToZeroDecimals() {
        XCTAssertEqual(Double(1).round(to: 0), 1)
    }

    func testRoundZeroToZeroDecimals() {
        XCTAssertEqual(Double(0).round(to: 0), 0)
    }

    func testRoundOneDecimalToZeroDecimals() {
        XCTAssertEqual(Double(5.3).round(to: 0), 5)
    }

    func testRoundMultipleDecimalToZeroDecimals() {
        XCTAssertEqual(Double(4.723).round(to: 0), 5)
    }

    func testRoundBigUpMultipleDecimalToZeroDecimals() {
        XCTAssertEqual(Double(4.44444445).round(to: 0), 4)  //works for now
    }

    func testRoundBigDownMultipleDecimalToZeroDecimals() {
        XCTAssertEqual(Double(4.44444443).round(to: 0), 4)
    }

    func testRoundBigNumberToOneDecimal() {
        XCTAssertEqual(Double(3242345).round(to: 1), 3242345)
    }

    func testRoundSmallNumberToOneDecimal() {
        XCTAssertEqual(Double(45).round(to: 1), 45)
    }

    func testRoundOneToOneDecimal() {
        XCTAssertEqual(Double(1).round(to: 1), 1)
    }

    func testRoundZeroToOneDecimal() {
        XCTAssertEqual(Double(0).round(to: 1), 0)
    }

    func testRoundOneDecimalToOneDecimal() {
        XCTAssertEqual(Double(5.3).round(to: 1), 5.3)
    }

    func testRoundMultipleDecimalToOneDecimal() {
        XCTAssertEqual(Double(4.723).round(to: 1), 4.7)
    }

    func testRoundBigUpMultipleDecimalToOneDecimal() {
        XCTAssertEqual(Double(4.44444445).round(to: 1), 4.4)  //works for now
    }

    func testRoundBigDownMultipleDecimalToOneDecimal() {
        XCTAssertEqual(Double(4.44444443).round(to: 1), 4.4)
    }

    func testRoundBigNumberToThreeDecimals() {
        XCTAssertEqual(Double(3242345).round(to: 3), 3242345)
    }

    func testRoundSmallNumberToThreeDecimals() {
        XCTAssertEqual(Double(45).round(to: 3), 45)
    }

    func testRoundOneToThreeDecimals() {
        XCTAssertEqual(Double(1).round(to: 3), 1)
    }

    func testRoundZeroToThreeDecimals() {
        XCTAssertEqual(Double(0).round(to: 3), 0)
    }

    func testRoundOneDecimalToThreeDecimals() {
        XCTAssertEqual(Double(5.3).round(to: 3), 5.3)
    }

    func testRoundMultipleDecimalToThreeDecimals() {
        XCTAssertEqual(Double(4.723).round(to: 3), 4.723)
    }

    func testRoundBigUpMultipleDecimalToThreeDecimals() {
        XCTAssertEqual(Double(4.44444445).round(to: 3), 4.444)   //works for now
    }

    func testRoundBigDownMultipleDecimalToThreeDecimals() {
        XCTAssertEqual(Double(4.44444443).round(to: 3), 4.444)
    }
}
