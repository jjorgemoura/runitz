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
//                .environment(\.colorScheme, .dark)
        }
    }

    // MARK: - private methods

    private static func initState() -> AppState {
        let initialDistance = Distance(value: 5, unit: .km)
//        let initialPace = Pace(seconds: 300, unit: .km)
//        let initialSettings = SettingsOptionsFactory().defaultSettingsOptions()

//        return AppState(id: UUID(), currentDistance: initialDistance, currentPace: initialPace, settings: initialSettings, settingsTheme: .system)
        return AppState(id: UUID(), currentDistance: initialDistance)
    }

    private static func initEnvironment() -> AppEnvironment {
        return AppEnvironment()
    }
}
