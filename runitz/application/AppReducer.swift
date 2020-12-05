//
// Copyright © 2020  Jorge Moura. All rights reserved.

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in
    print(environment)

    switch action {
    case .increase(let value):
        state.currentDistance.value += Double(value)
        return .none
    case .decrease(let value):
        guard state.currentDistance.value > 0 else { return .none }
        state.currentDistance.value -= Double(value)
        return .none
    case .switchUnit(let unit):
        state.currentDistance.unit = unit
        return .none
    }
}
.debug()
