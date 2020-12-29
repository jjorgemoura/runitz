//
//  Copyright © 2020  Jorge Moura . All rights reserved.

import XCTest
@testable import runitz

class AppReducerTests: XCTestCase {

    private let environment = AppEnvironment()
    private let defaultPace = Pace(seconds: 0, unit: .km)

    func testWhenIncreaseByOneStateGetsUpdated() {
        let distance = Distance(value: 0, unit: .km)
        var state = AppState(id: UUID(), currentDistance: distance, currentPace: defaultPace, settings: SettingsOptionsFactory().defaultSettingsOptions())

        _ = appReducer(&state, .increaseDistance(1), environment)

        XCTAssertEqual(state.currentDistance.value, 1)
    }

    func testWhenIncreaseByMinusOneStateGetsUpdated() {
        let distance = Distance(value: 1, unit: .km)
        var state = AppState(id: UUID(), currentDistance: distance, currentPace: defaultPace, settings: SettingsOptionsFactory().defaultSettingsOptions())

        _ = appReducer(&state, .increaseDistance(-1), environment)

        XCTAssertEqual(state.currentDistance.value, 0)
    }

    func testWhenIncreaseByTenStateGetsUpdated() {
        let distance = Distance(value: 5, unit: .km)
        var state = AppState(id: UUID(), currentDistance: distance, currentPace: defaultPace, settings: SettingsOptionsFactory().defaultSettingsOptions())

        _ = appReducer(&state, .increaseDistance(10), environment)

        XCTAssertEqual(state.currentDistance.value, 15)
    }

    func testWhenDecreaseByOneStateGetsUpdated() {
        let distance = Distance(value: 5, unit: .km)
        var state = AppState(id: UUID(), currentDistance: distance, currentPace: defaultPace, settings: SettingsOptionsFactory().defaultSettingsOptions())

        _ = appReducer(&state, .decreaseDistance(1), environment)

        XCTAssertEqual(state.currentDistance.value, 4)
    }

    func testWhenDecreaseByMinusOneStateGetsUpdated() {
        let distance = Distance(value: 5, unit: .km)
        var state = AppState(id: UUID(), currentDistance: distance, currentPace: defaultPace, settings: SettingsOptionsFactory().defaultSettingsOptions())

        _ = appReducer(&state, .decreaseDistance(-1), environment)

        XCTAssertEqual(state.currentDistance.value, 6)
    }

    func testWhenDecreaseByTenStateGetsUpdated() {
        let distance = Distance(value: 50, unit: .km)
        var state = AppState(id: UUID(), currentDistance: distance, currentPace: defaultPace, settings: SettingsOptionsFactory().defaultSettingsOptions())

        _ = appReducer(&state, .decreaseDistance(10), environment)

        XCTAssertEqual(state.currentDistance.value, 40)
    }

    func testWhenSwitchKmsToMilesThenStateGetsUpdated() {
        let distance = Distance(value: 80, unit: .km)
        var state = AppState(id: UUID(), currentDistance: distance, currentPace: defaultPace, settings: SettingsOptionsFactory().defaultSettingsOptions())

        _ = appReducer(&state, .switchToNextDistanceUnit, environment)

        XCTAssertEqual(state.currentDistance.unit, Unit.mile)
    }
}
