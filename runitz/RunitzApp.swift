//
// Copyright © 2020  Jorge Moura. All rights reserved.

import SwiftUI
import ComposableArchitecture

@main
struct RunitzApp: App {

    let store = Store(
        initialState: initState(),
        reducer: appReducer,
        environment: initEnvironment()
    )

    var body: some Scene {
        WindowGroup {
            HomeView(store: store)
        }
    }

    // MARK: - private methods

    private static func initState() -> AppState {
        return AppState(id: UUID(), currentDistance: Distance(value: 5, unit: .km, isFavourite: false), currentPace: Pace(seconds: 300, unit: .km))
    }

    private static func initEnvironment() -> AppEnvironment {
        return AppEnvironment(version: AppVersion())
    }
}
