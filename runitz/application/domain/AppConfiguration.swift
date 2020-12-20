//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import Foundation

struct AppConfiguration {

    static func appVersionNumber() -> String {
        guard let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
            fatalError("App version must be defined on Project")
        }
        return appVersion
    }

    static func appBuildNumber() -> String {
        guard let appBuildVersion = Bundle.main.infoDictionary?["CFBundleVersion"] as? String else {
            fatalError("Build version must be defined on Project")
        }
        return appBuildVersion
    }

//    static func productName() -> String {
//        guard let productName = Bundle.main.infoDictionary?["ProductName"] as? String else {
//            fatalError("App product name must be defined on Project")
//        }
//        return productName
//    }
}
