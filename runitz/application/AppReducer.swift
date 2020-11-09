//
// Copyright © 2020  Jorge Moura. All rights reserved.

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in

    switch action {
    case let .convert(distanceValue, unit):
        print(distanceValue)

        let distance = Distance(value: Double(distanceValue), unit: unit, isFavourite: false)
        state.currentDistance = distance

        return .none

    case .favouriteToggled(let distance):
        print(distance)
//        distance.isFavourite.toggle()
        return .none

    case .generateDistanceList:
        return .none
    }
}
