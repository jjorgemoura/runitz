//
// Copyright © 2020  Jorge Moura. All rights reserved.

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in
    print(action)
    print(environment)
    print(state)

//    switch action {
//    case .increaseDistance(let value):
//        state.currentDistance.value += Double(value)
//        return .none
//    case .decreaseDistance(let value):
//        guard state.currentDistance.value > 0 else { return .none }
//        state.currentDistance.value -= Double(value)
//        return .none
//    case .switchToNextDistanceUnit:
//        state.currentDistance.unit = state.currentDistance.unit.nextDistanceUnit()
//        return .none
//
//    case .increasePace(let value):
//        state.currentPace.seconds += Double(value)
//        return .none
//    case .decreasePace(let value):
//        guard state.currentPace.seconds > 0 else { return .none }
//        state.currentPace.seconds -= Double(value)
//        return .none
//    case .switchToNextPaceUnit:
//        state.currentPace.unit = state.currentPace.unit.nextPaceUnit()
//        return .none
//
//    case .updateTheme(let theme):
//        state.settingsTheme = theme
//        return .none
//    }
}
.debug()
