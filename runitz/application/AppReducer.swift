//
// Copyright © 2020  Jorge Moura. All rights reserved.

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in
    print(environment)

    switch action {
    case .increaseDistance(let value):
        state.currentDistance.value += Double(value)
        return .none
    case .decreaseDistance(let value):
        guard state.currentDistance.value > 0 else { return .none }
        state.currentDistance.value -= Double(value)
        return .none
    case .switchToNextDistanceUnit:
        state.currentDistance.unit = state.currentDistance.unit.nextDistanceUnit()
        return .none
    }
}
.debug()
