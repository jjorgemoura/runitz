//
// Copyright © 2020  Jorge Moura. All rights reserved.

enum AppAction: Equatable {
    case increaseDistance(Int)
    case decreaseDistance(Int)
    case switchToNextDistanceUnit

    case increasePace(Int)
    case decreasePace(Int)
    case switchToNextPaceUnit
}
