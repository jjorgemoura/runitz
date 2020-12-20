//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import UIKit

struct SystemInfo: CustomStringConvertible, Equatable {
    let osName: String = UIDevice.current.systemName
    let osVersion: String = UIDevice.current.systemVersion
    let appVersion: String = AppConfiguration.appVersionNumber()
    let appBuildNumber: String = AppConfiguration.appBuildNumber()
//    let productName: String = AppConfiguration.productName()

    var deviceModel: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }

    var description: String {
//        let deviceModelKeyString = stringsProvider.string(key: .systemInfoDeviceModel)
//        let osKeyString = stringsProvider.string(key: .systemInfoOsVersion)
//        let appVersionKeyString = stringsProvider.string(key: .systemInfoAppVersion)
        let deviceModelKeyString = "dffdsfsf"
        let osKeyString = "fghfgh"
        let appVersionKeyString = "dfghbsv scv"

        return "\(deviceModelKeyString): \(deviceModel) \n\(osKeyString): \(osVersion) \n\(appVersionKeyString): \(appVersion)"
    }

//    var userAgent: String {
//        return "\(productName)/\(appVersion) (\(deviceModel); \(osName) \(osVersion))"
//    }

    var systemDescription: String {
        return description
    }

    var version: String {
        return "\(appVersion) (\(appBuildNumber))"
    }
}
