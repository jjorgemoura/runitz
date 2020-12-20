//
// Copyright © 2020  Jorge Moura . All rights reserved.

import Foundation

struct Pace: Equatable {
    var seconds: TimeInterval
    var unit: Unit

    func pace(in newUnit: Unit) -> TimeInterval {
        let newPace = seconds * newUnit.factor(to: unit)
        return newPace
    }
}
