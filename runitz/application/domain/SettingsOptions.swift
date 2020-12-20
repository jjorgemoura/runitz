//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import Foundation

struct SettingsOptions: Equatable {
    let optionGroups: [SettingsOptionGroup]
    let systemInfo: SystemInfo
}

struct SettingsOptionGroup: Equatable, Identifiable {
    let id = UUID()
    let options: [SettingsOption]
    let title: String?
    let footer: String?

    func isVisible() -> Bool {
//        return options.map { $0.isVisible }.reduce(true) { $0 && $1 }
        return options.map { $0.isVisible }.allSatisfy { $0 }
    }
}

struct SettingsOption: Equatable, Identifiable {
    let id = UUID()
    let title: String
    let description: String?
    let accessoryType: SettingsOptionAccessoryType
    let isVisible: Bool
//    let clickEvent: Event?
//    let options: [SettingsOptionsKey]?
}

enum SettingsOptionAccessoryType: Equatable {
    case none
    case disclosure
//    case onOff(onEvent: Event, offEvent: Event)
}

enum SettingsOptionsKey: Equatable {
//    case optionDescriptionLink(text: String, event: Event)
}
