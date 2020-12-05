//
//  Copyright © 2020  Jorge Moura . All rights reserved.

import XCTest
@testable import runitz

class AppReducerTests: XCTestCase {

    private let environment = AppEnvironment()

    func testWhenIncreaseByOneStateGetsUpdated() {
        let distance = Distance(value: 0, unit: .km, isFavourite: true)
        var state = AppState(id: UUID(), currentDistance: distance)

        _ = appReducer(&state, .increase(1), environment)

        XCTAssertEqual(state.currentDistance.value, 1)
    }

    func testWhenIncreaseByMinusOneStateGetsUpdated() {
        let distance = Distance(value: 1, unit: .km, isFavourite: true)
        var state = AppState(id: UUID(), currentDistance: distance)

        _ = appReducer(&state, .increase(-1), environment)

        XCTAssertEqual(state.currentDistance.value, 0)
    }

    func testWhenIncreaseByTenStateGetsUpdated() {
        let distance = Distance(value: 5, unit: .km, isFavourite: true)
        var state = AppState(id: UUID(), currentDistance: distance)

        _ = appReducer(&state, .increase(10), environment)

        XCTAssertEqual(state.currentDistance.value, 15)
    }

    func testWhenDecreaseByOneStateGetsUpdated() {
        let distance = Distance(value: 5, unit: .km, isFavourite: true)
        var state = AppState(id: UUID(), currentDistance: distance)

        _ = appReducer(&state, .decrease(1), environment)

        XCTAssertEqual(state.currentDistance.value, 4)
    }

    func testWhenDecreaseByMinusOneStateGetsUpdated() {
        let distance = Distance(value: 5, unit: .km, isFavourite: true)
        var state = AppState(id: UUID(), currentDistance: distance)

        _ = appReducer(&state, .decrease(-1), environment)

        XCTAssertEqual(state.currentDistance.value, 6)
    }

    func testWhenDecreaseByTenStateGetsUpdated() {
        let distance = Distance(value: 50, unit: .km, isFavourite: true)
        var state = AppState(id: UUID(), currentDistance: distance)

        _ = appReducer(&state, .decrease(10), environment)

        XCTAssertEqual(state.currentDistance.value, 40)
    }

    func testWhenSwitchKmsToMilesThenStateGetsUpdated() {
        let distance = Distance(value: 80, unit: .km, isFavourite: true)
        var state = AppState(id: UUID(), currentDistance: distance)

        _ = appReducer(&state, .switchUnit(Unit.mile), environment)

        XCTAssertEqual(state.currentDistance.unit, Unit.mile)
    }
}
