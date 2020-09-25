//
//  Copyright © 2020  ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import ComposableArchitecture

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, environment in

    switch action {

    case .save:
        return .none
    case .convert(_):
        return .none
    }
}
