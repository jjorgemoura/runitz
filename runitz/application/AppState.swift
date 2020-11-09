//
// Copyright © 2020  Jorge Moura. All rights reserved.

import Foundation

struct AppState: Identifiable, Equatable {
    var id: UUID

//    var defaultDistance: Distance
    var currentDistance: Distance
    var historyDistance: [Distance]

//    var defaultPace: Pace
//    var currentPace: Pace
//    var historyPace: [Pace]
}
