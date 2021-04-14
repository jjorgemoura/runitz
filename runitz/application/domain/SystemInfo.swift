//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

//import UIKit
//
//struct SystemInfo: CustomStringConvertible, Equatable {
//    let osName: String = UIDevice.current.systemName
//    let osVersion: String = UIDevice.current.systemVersion
//
//    var deviceModel: String {
//        var systemInfo = utsname()
//        uname(&systemInfo)
//        let machineMirror = Mirror(reflecting: systemInfo.machine)
//        let identifier: String = machineMirror.children.reduce(into: "") { identifier, element in
//            guard let value = element.value as? Int8, value != 0 else { return }
//            identifier += String(UnicodeScalar(UInt8(value)))
//        }
//        return identifier
//    }
//
//    var description: String {
//        let deviceModelKeyString = "dffdsfsf"
//        let osKeyString = "fghfgh"
//        let appVersionKeyString = "dfghbsv scv"
//
//        return "\(deviceModelKeyString): \(deviceModel) \n\(osKeyString): \(osVersion) \n\(appVersionKeyString): \(appVersionNumber)"
//    }
//
//    var appVersionNumber: String {
//        guard let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
//            fatalError("App version must be defined on Project")
//        }
//        return appVersion
//    }
//
//    var appBuildNumber: String {
//        guard let appBuildVersion = Bundle.main.infoDictionary?["CFBundleVersion"] as? String else {
//            fatalError("Build version must be defined on Project")
//        }
//        return appBuildVersion
//    }
//
//    var systemDescription: String {
//        return description
//    }
//
//    var version: String {
//        return "\(appVersionNumber) (\(appBuildNumber))"
//    }
//}
