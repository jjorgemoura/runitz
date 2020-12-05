//
// Copyright © 2020  Jorge Moura. All rights reserved.

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in
    print(environment)

    switch action {
    case .increase(let value):
        print(value)
        state.currentDistance.value += Double(value)
        return .none
    case .decrease(let value):
        print(value)
        state.currentDistance.value -= Double(value)
        return .none
    case .switchUnit(let unit):
        print(unit)
        state.currentDistance.unit = unit
        return .none
    }
}
