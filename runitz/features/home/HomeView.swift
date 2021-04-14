//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI
import ComposableArchitecture

struct HomeView: View {
    let store: Store<AppState, AppAction>

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(
                    destination: DistanceConversionView(store: store),
                    label: { Text("Convert") }
                )
                Spacer()
                    .navigationTitle(Text("Home"))
                    .navigationBarItems(
                        trailing:
                            NavigationLink(
                                destination: SettingsView(),
                                label: { Image(systemName: "gear") }
                            )
                    )
            }
        }
        .accentColor(.appPrimary)
    }
}

//struct HomeView: View {
//
//    let store: Store<AppState, AppAction>
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Section(header: Text("Units")) {
//                    NavigationLink(
//                        destination: EmptyView(),
//                        label: { Text("Top Results") }
//                    )
//                    NavigationLink(
//                        destination: EmptyView(),
//                        label: { Text("Favourites") }
//                    )
//                    NavigationLink(
//                        destination: DistanceConversionView(store: store),
//                        label: { Text("Convert") }
//                    )
//                }
//                Section(header: Text("Pace")) {
//                    NavigationLink(
//                        destination: EmptyView(),
//                        label: { Text("Top Results") }
//                    )
//                    NavigationLink(
//                        destination: EmptyView(),
//                        label: { Text("Favourites") }
//                    )
////                    NavigationLink(
////                        destination: PaceConversionView(store: store),
////                        label: { Text("Convert") }
////                    )
//                }
//            }
//            .navigationTitle(Text("Home"))
//            .navigationBarItems(
//                trailing:
//                    NavigationLink(
//                        destination: SettingsView(),
//                        label: { Image(systemName: "gear") }
//                    )
//            )
//        }
//        .accentColor(.appPrimary)
//    }
//}

struct HomeView_Previews: PreviewProvider {
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
            HomeView(store: demoStore)
            HomeView(store: demoStore)
                .preferredColorScheme(.dark)
        }
    }
}
