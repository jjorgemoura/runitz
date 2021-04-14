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
                BannerText(data: [
                    "\(valueKm) \(Unit.km.rawValue)",
                    "\(valueMile) \(Unit.mile.rawValue)",
                    "\(valueFeet) \(Unit.feet.rawValue)"
                ])
                Spacer()
                HStack {
//                    Button(action: { viewStore.send(.decreaseDistance(1)) },
//                           label: { StepIncrementLabel(type: .decrement) })
                    DistanceController(distance: "\(String(viewStore.currentDistance.value.round(to: 1)))")
//                    Button(action: { viewStore.send(.increaseDistance(1)) },
//                           label: { StepIncrementLabel(type: .increment) })
                }
////                Button(viewStore.currentDistance.unit.rawValue) {
////                    viewStore.send(AppAction.switchToNextDistanceUnit)
////                }
////                .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
////                .foregroundColor(.gray)
////                .background(Color.red)
                UnitSwitchButton(unit: viewStore.currentDistance.unit.rawValue)
                Spacer()
            }
            .accentColor(.appPrimary)
        }
    }
}

struct DistanceConversionView_Previews: PreviewProvider {
    static let demoStore = Store(
        initialState: AppState(
            id: UUID(),
            currentDistance: Distance(value: 5, unit: .km)
//            currentPace: Pace(seconds: 300, unit: .km),
//            settings: SettingsOptionsFactory().defaultSettingsOptions(),
//            settingsTheme: .system
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
