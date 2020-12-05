//
// Copyright © 2020  Jorge Moura. All rights reserved.

import SwiftUI
import ComposableArchitecture

struct HomeView: View {

    let store: Store<AppState, AppAction>

    var body: some View {
        VStack(spacing: 24.0) {
            Text("0")
            Button("to mile") {
            }
            Text("Hello, World!")
        }
    }
}

struct Home_Previews: PreviewProvider {
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
        environment: AppEnvironment()
    )

    static var previews: some View {
        Group {
            HomeView(store: demoStore)
            HomeView(store: demoStore)
                .colorScheme(.dark)
        }
    }
}
