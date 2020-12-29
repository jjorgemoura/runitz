//
// Copyright © 2020  Jorge Moura. All rights reserved.

/// Enumeration representing all the top level actions.
public enum AppAction: Equatable {
    case increaseDistance(Int)
    case decreaseDistance(Int)
    case switchToNextDistanceUnit

    case increasePace(Int)
    case decreasePace(Int)
    case switchToNextPaceUnit
}
