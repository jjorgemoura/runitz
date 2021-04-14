////
////  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.
//
//import SwiftUI
//import ComposableArchitecture
//
//struct SettingsPlainView: View {
//
//    let store: Store<AppState, AppAction>
//
//    var body: some View {
//        WithViewStore(self.store) { viewStore in
//            AppVersionTag(version: viewStore.settings.systemInfo.version)
//        }
//    }
//}
//
//struct SettingsPlainView_Previews: PreviewProvider {
//    static let demoStore = Store(
//        initialState: AppState(
//            id: UUID(),
//            currentDistance: Distance(value: 5, unit: .km),
//            currentPace: Pace(seconds: 300, unit: .km),
//            settings: SettingsOptionsFactory().defaultSettingsOptions(),
//            settingsTheme: .system
//        ),
//        reducer: appReducer,
//        environment: AppEnvironment()
//    )
//
//    static var previews: some View {
//        Group {
//            SettingsPlainView(store: demoStore)
//            SettingsPlainView(store: demoStore)
//                .preferredColorScheme(.dark)
//        }
//    }
//}
