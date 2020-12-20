//
// Copyright © 2020  Jorge Moura . All rights reserved.

struct Distance: Equatable {
    var value: Double
    var unit: Unit

    func distance(in newUnit: Unit) -> Double {
        let newValue = value * unit.factor(to: newUnit)
        return newValue
    }
}
