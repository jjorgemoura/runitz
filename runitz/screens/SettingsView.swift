//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI
import ComposableArchitecture

struct SettingsView: View {

    let store: Store<AppState, AppAction>

    var body: some View {
        VStack {
            Text("Settings")
            Text("xxx")
            Text("3rd Party Dependencies")
            Text("Privacy")
            Text("Version")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static let demoStore = Store(
        initialState: AppState(
            id: UUID(),
            currentDistance: Distance(
                value: 5,
                unit: .km,
                isFavourite: true
            )
        ),
        reducer: appReducer,
        environment: AppEnvironment(version: AppVersion())
    )

    static var previews: some View {
        Group {
            SettingsView(store: demoStore)
            SettingsView(store: demoStore)
                .preferredColorScheme(.dark)
        }
    }
}
