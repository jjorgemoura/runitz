//
//  Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

extension Unit {
    func nextDistanceUnit() -> Unit {
        switch self {
        case .km:
            return .mile
        case .mile:
            return .feet
        case .feet:
            return .km
        }
    }

    func nextPaceUnit() -> Unit {
        switch self {
        case .km:
            return .mile
        case .mile:
            return .km
        case .feet:
            return .km
        }
    }
}
