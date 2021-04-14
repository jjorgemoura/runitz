////
////  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.
//
//import SwiftUI
//import ComposableArchitecture
//
//struct AppSettingsView: View {
//
//    let store: Store<AppState, AppAction>
//
//    @Environment(\.colorScheme) var colorScheme: ColorScheme
//
//    var body: some View {
//        NavigationView {
//            WithViewStore(self.store) { viewStore in
//                Form {
////                    Picker("Mode",
////                           selection: viewStore.binding(
////                            get: \.settingsTheme,
////                            send: AppAction.updateTheme
////                           )
////                    ) {
////                        ForEach(AppSettingsTheme.allCases, id: \.self) { theme in
////                            Text(theme.rawValue)
////                        }
////                    }
//
//                    Button(action: {
////                        colorScheme = .dark
//                    }) {
//                        Text(colorScheme == .light ? "light mode" : "dark mode")
//                    }
//
//                    Section(header: Text("Privacy")) {
//                        Text("mode")
//                    }
//                    Section(header: Text("Project")) {
//                        Text("mode")
//                        Text("mode")
//                        Text("mode")
//                    }
//                    Section(header: Text("About")) {
//                        Text("mode")
//                    }
//                }
//                .navigationTitle("Settings")
//            }
//        }
//    }
//}
//
//struct AppSettingsView_Previews: PreviewProvider {
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
//            AppSettingsView(store: demoStore)
//            AppSettingsView(store: demoStore)
//                .preferredColorScheme(.dark)
//        }
//    }
//}
