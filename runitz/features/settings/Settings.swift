//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import UIKit

public struct UserSettings: Codable, Equatable {
    public var colorScheme: ColorScheme
    public var enableHaptics: Bool

    public init(colorScheme: ColorScheme = .system, enableHaptics: Bool = true) {
        self.colorScheme = colorScheme
        self.enableHaptics = enableHaptics
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.colorScheme = (try? container.decode(ColorScheme.self, forKey: .colorScheme)) ?? .system
        self.enableHaptics = (try? container.decode(Bool.self, forKey: .enableHaptics)) ?? true
    }
}

public enum ColorScheme: String, CaseIterable, Codable {
    case dark
    case light
    case system

    public var userInterfaceStyle: UIUserInterfaceStyle {
        switch self {
        case .dark:
            return .dark
        case .light:
            return .light
        case .system:
            return .unspecified
        }
    }
}
