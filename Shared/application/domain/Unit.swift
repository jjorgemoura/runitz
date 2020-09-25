//
//  Copyright © 2020  ___ORGANIZATIONNAME___. All rights reserved.
//

enum Unit: String, CaseIterable, Equatable {
    case km = "Km"
    case mile = "Mile"

    static let mileInKm: Double = 1.609344
}
