//
// Copyright © 2020  Jorge Moura. All rights reserved.

import SwiftUI
import ComposableArchitecture

struct DistanceConversionView: View {

    let store: Store<AppState, AppAction>

    var body: some View {
        WithViewStore(self.store) { viewStore in
            let valueKm = String(viewStore.currentDistance.distance(in: .km).round(to: 1))
            let valueMile = String(viewStore.currentDistance.distance(in: .mile).round(to: 1))
            let valueFeet = String(viewStore.currentDistance.distance(in: .feet).round(to: 1))

            VStack(spacing: 24.0) {
                HStack {
                    Text("\(valueKm) \(Unit.km.rawValue)")
                    Text("|")
                    Text("\(valueMile) \(Unit.mile.rawValue)")
                    Text("|")
                    Text("\(valueFeet) \(Unit.feet.rawValue)")
                }
                Text("------------")
                Text("\(String(viewStore.currentDistance.value.round(to: 1)))")
                HStack {
                    Button(" - ") {
                        print("JM: -> - tapped")
                        viewStore.send(.decrease(1))
                    }
                    Button(viewStore.currentDistance.unit.rawValue) {
                        print("JM: -> Unit button tapped")
                        viewStore.send(AppAction.switchUnit(viewStore.currentDistance.unit.next()))
                    }
                    Button(" + ") {
                        print("JM: -> + tapped")
                        viewStore.send(.increase(1))
                    }
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
