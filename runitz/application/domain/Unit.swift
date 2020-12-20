//
// Copyright © 2020  Jorge Moura . All rights reserved.

enum Unit: String, CaseIterable, Equatable {
    case km = "Km"
    case mile = "Mile"
    case feet = "Feet"

    private static let kmPerMile: Double = 1.609344
    private static let FeetPerKm: Double = 3280.84
    private static let FeetPerMile: Double = 5280

    func factor(to unit: Unit) -> Double {
        switch (self, unit) {
        case (.km, .km): return 1
        case (.km, .mile): return 1 / Unit.kmPerMile
        case (.km, .feet): return Unit.FeetPerKm
        case (.mile, .km): return Unit.kmPerMile
        case (.mile, .mile): return 1
        case (.mile, .feet): return Unit.FeetPerMile
        case (.feet, .km): return 1 / Unit.FeetPerKm
        case (.feet, .mile): return 1 / Unit.FeetPerMile
        case (.feet, .feet): return 1
        }
    }
}
