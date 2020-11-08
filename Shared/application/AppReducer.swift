//
// Copyright © 2020  Jorge Moura . All rights reserved.

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in

    switch action {
    case .addFavourite(let distance):
        print(distance)
        return .none
    case .removeFavourite(let distance):
        print(distance)
        return .none
    case .convert(let distance):
        print(distance)
        return .none
    case .generateList:
        return .none
    }
}
