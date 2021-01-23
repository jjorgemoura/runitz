//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import Foundation

struct StorageService {
    var persist: (AppState) -> Void
    var retrieve: () -> AppAction
}

extension StorageService {
    static var mock = Self(
        persist: { state in print(state) },
        retrieve: { return .increasePace(1) }
    )

    static var live = Self(
        persist: { state in print(state) },
        retrieve: { return .increasePace(1) }
    )
}
