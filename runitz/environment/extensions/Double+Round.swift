//
// Copyright © 2020  ___ORGANIZATIONNAME___ . All rights reserved.

import Foundation

extension Double {

    func round(to decimalPlaces: Int) -> Double {
        let divisor = pow(10.0, Double(decimalPlaces))
        return (self * divisor).rounded(.toNearestOrAwayFromZero) / divisor
    }
}
