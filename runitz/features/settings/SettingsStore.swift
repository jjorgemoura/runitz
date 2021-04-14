//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import ComposableArchitecture
import UIKit

enum SettingsAction {
//    case didBecomeActive
//    case onAppear
//    case onDismiss
//    case openSettingButtonTapped
}

struct SettingsState {
//    public var appVersion: Build.Number?
//    public var developer: DeveloperSettings
    public var userSettings: UserSettings
}

struct SettingsEnvironment {
//    public var apiClient: ApiClient
//    public var applicationClient: UIApplicationClient
//    public var backgroundQueue: AnySchedulerOf<DispatchQueue>
//    public var build: Build

//    public var feedbackGenerator: FeedbackGeneratorClient
//    public var lowPowerMode: LowPowerModeClient
//    public var mainQueue: AnySchedulerOf<DispatchQueue>
    public var setUserInterfaceStyle: (UIUserInterfaceStyle) -> Effect<Never, Never>
//    public var userDefaults: UserDefaultsClient
}

let settingsReducer: Reducer<SettingsState, SettingsAction, SettingsEnvironment> = Reducer { state, action, environment in
//        struct DidBecomeActiveId: Hashable {}

    return .none

//        switch action {
//        case .didBecomeActive:
//            return environment.userNotifications.getNotificationSettings
//                .receive(on: environment.mainQueue)
//                .eraseToEffect()
//                .map(SettingsAction.userNotificationSettingsResponse)
//
//        case .onAppear:
//            state.buildNumber = environment.build.number()
//            state.stats.isAnimationReduced = state.userSettings.enableReducedAnimation
//            state.stats.isHapticsEnabled = state.userSettings.enableHaptics
//            state.userSettings.appIcon = environment.applicationClient.alternateIconName()
//                .flatMap(AppIcon.init(rawValue:))
//
//            let loadProductsEffect: Effect<SettingsAction, Never>
//            if state.isFullGamePurchased {
//                loadProductsEffect = .none
//            } else {
//                loadProductsEffect = environment.storeKit
//                    .fetchProducts([
//                        environment.serverConfig.config().productIdentifiers.fullGame
//                    ])
//                    .mapError { $0 as NSError }
//                    .receive(on: environment.mainQueue.animation())
//                    .catchToEffect()
//                    .map(SettingsAction.productsResponse)
//            }
//
//            if let baseUrl = DeveloperSettings.BaseUrl(
//                rawValue: environment.apiClient.baseUrl().absoluteString)
//            {
//                state.developer.currentBaseUrl = baseUrl
//            }
//
//            return .merge(
//                loadProductsEffect,
//
//                environment.storeKit.observer
//                    .receive(on: environment.mainQueue.animation())
//                    .map(SettingsAction.paymentTransaction)
//                    .eraseToEffect()
//                    .cancellable(id: PaymentObserverId()),
//
//                environment.userNotifications.getNotificationSettings
//                    .receive(on: environment.mainQueue.animation())
//                    .eraseToEffect()
//                    .map(SettingsAction.userNotificationSettingsResponse),
//
//                NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)
//                    .map { _ in .didBecomeActive }
//                    .eraseToEffect()
//                    .cancellable(id: DidBecomeActiveId())
//            )
//
//        case .onDismiss:
//            return .merge(
//                .cancel(id: DidBecomeActiveId()),
//                .cancel(id: PaymentObserverId())
//            )
//
//        case .openSettingButtonTapped:
//            return URL(string: environment.applicationClient.openSettingsURLString())
//                .map {
//                    environment.applicationClient.open($0, [:]).fireAndForget()
//                }
//                ?? .none
//
//        case .reportABugButtonTapped:
//            var components = URLComponents()
//            components.scheme = "mailto"
//            components.path = "support@pointfree.co"
//            components.queryItems = [
//                URLQueryItem(name: "subject", value: "I found a bug in isowords"),
//                URLQueryItem(
//                    name: "body",
//                    value: """
//
//
//            ---
//            Build: \(environment.build.number()) (\(environment.build.gitSha()))
//            \(environment.apiClient.currentPlayer()?.player.id.rawValue.uuidString ?? "")
//            """
//                ),
//            ]
//
//            return environment.applicationClient.open(components.url!, [:])
//                .fireAndForget()
//        }
    }
//    .binding(action: /SettingsAction.binding)
