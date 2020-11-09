//
// Copyright © 2020  Jorge Moura . All rights reserved.

//struct Distance: Equatable {
//    let value: Double
//    let unit: Unit
//    var isFavourite: Bool
//}

struct Distance: Equatable {
    let value: Double
    let unit: Unit
    var isFavourite: Bool

    var unitValues: [Unit: String] {
        var response: [Unit: String] = [:]

        for unit in Unit.allCases {
            switch unit {
            case .km:
                response[.km] = "16"
            case .mile:
                response[.mile] = "10"
            }
        }

        return response
    }
}
