//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI
import ComposableArchitecture

struct SettingsView: View {

    let store: Store<AppState, AppAction>

    var body: some View {
        WithViewStore(self.store) { viewStore in
            List {
                ForEach(viewStore.settings.optionGroups) { group in
                    Section(header: Text(group.title ?? ""),
                            footer: Text(group.footer ?? "")) {
                        ForEach(group.options) { item in
                            Text(item.title)
                        }
                    }
                }
//                Section(footer: AppVersionTag(version: viewStore.settings.systemInfo.version)
//                            .alignmentGuide(HorizontalAlignment.center) { dimension in
//                                0
//                            }) {
//                }
//                .alignmentGuide(HorizontalAlignment.center) { dimension in
//                    0
//                }
            }
            .listStyle(GroupedListStyle())
            AppVersionTag(version: viewStore.settings.systemInfo.version)
        }
        .accentColor(.appPrimary)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static let demoStore = Store(
        initialState: AppState(
            id: UUID(),
            currentDistance: Distance(value: 5, unit: .km),
            currentPace: Pace(seconds: 300, unit: .km),
            settings: SettingsOptionsFactory().defaultSettingsOptions()
        ),
        reducer: appReducer,
        environment: AppEnvironment()
    )

    static var previews: some View {
        Group {
            SettingsView(store: demoStore)
            SettingsView(store: demoStore)
                .preferredColorScheme(.dark)
        }
    }
}
