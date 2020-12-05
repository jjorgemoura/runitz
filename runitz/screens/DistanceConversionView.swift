//
// Copyright © 2020  Jorge Moura. All rights reserved.

import SwiftUI
import ComposableArchitecture

struct DistanceConversionView: View {

    let store: Store<AppState, AppAction>

    var body: some View {
        VStack(spacing: 24.0) {
            HStack {
                Text("8 Kms")
                Text("5 Miles")
                Text("27000 feet")
            }
            Text("------------")
            Text(" 5 ")
            HStack {
                Button("-") {
                    print("JM: -> - tapped")
                }
                Button("Km") {
                    print("JM: -> Unit button tapped")
                }
                Button("+") {
                    print("JM: -> + tapped")
                }
            }
        }
    }
}

struct DistanceConversionView_Previews: PreviewProvider {
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
            DistanceConversionView(store: demoStore)
            DistanceConversionView(store: demoStore)
                .preferredColorScheme(.dark)
        }
    }
}
