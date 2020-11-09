//
// Copyright © 2020  Jorge Moura . All rights reserved.

enum Unit: String, CaseIterable, Equatable {
    case km = "Km"
    case mile = "Mile"

    static let mileInKm: Double = 1.609_344

    func factor(to unit: Unit) -> Double {
        switch (self, unit) {
        case (.km, .km): return 1
        case (.km, .mile): return 1 / Unit.mileInKm
        case (.mile, .km): return Unit.mileInKm
        case (.mile, .mile): return 1
        }
    }
}
