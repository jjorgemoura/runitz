//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI
import ComposableArchitecture

struct PaceConversionView: View {

    let store: Store<AppState, AppAction>

    var body: some View {
        WithViewStore(self.store) { viewStore in
            let valueKm = String(viewStore.currentPace.pace(in: .km).round(to: 1))
            let valueMile = String(viewStore.currentPace.pace(in: .mile).round(to: 1))

            VStack(spacing: 24.0) {
                HStack {
                    Text("\(valueKm) secs/\(Unit.km.rawValue)")
                        .font(.title)
                    Text("|")
                    Text("\(valueMile) secs/\(Unit.mile.rawValue)")
                        .font(.title)
                }
                Text("------------")
                Text("\(String(viewStore.currentPace.seconds.round(to: 1)))")
                HStack {
                    Button(" - ") {
                        viewStore.send(.decreasePace(1))
                    }
                    Button(viewStore.currentPace.unit.rawValue) {
                        viewStore.send(AppAction.switchToNextPaceUnit)
                    }
                    Button(" + ") {
                        viewStore.send(.increasePace(1))
                    }
                }
            }
        }
    }
}

struct PaceConversionView_Previews: PreviewProvider {
    static let demoStore = Store(
        initialState: AppState(
            id: UUID(),
            currentDistance: Distance(value: 5, unit: .km),
            currentPace: Pace(seconds: 300, unit: .km),
            settings: SettingsOptionsFactory().defaultSettingsOptions(),
            settingsTheme: .system
        ),
        reducer: appReducer,
        environment: AppEnvironment()
    )

    static var previews: some View {
        Group {
            PaceConversionView(store: demoStore)
            PaceConversionView(store: demoStore)
                .preferredColorScheme(.dark)
        }
    }
}
