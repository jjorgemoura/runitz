//
// Copyright © 2020  Jorge Moura . All rights reserved.

enum Unit: String, CaseIterable, Equatable {
    case km = "Km"
    case mile = "Mile"

    static let mileInKm = 1.609_344
}
