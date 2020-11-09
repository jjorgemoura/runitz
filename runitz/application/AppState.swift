//
// Copyright © 2020  Jorge Moura. All rights reserved.

import Foundation

struct AppState: Identifiable, Equatable {

    var id: UUID
    var favourites: [Distance]
}
