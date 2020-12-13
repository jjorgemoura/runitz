//
// Copyright © 2020  Jorge Moura . All rights reserved.

import Foundation

struct Pace: Equatable {
    let seconds: TimeInterval
    let unit: Unit

    func pace(in newUnit: Unit) -> TimeInterval {
        let newPace = seconds * newUnit.factor(to: unit)
        return newPace
    }
}
