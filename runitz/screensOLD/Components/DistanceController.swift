//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI

struct DistanceController: View {
    let distance: String

    var body: some View {
        Text(distance)
            .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
            .foregroundColor(.appOnPrimary)
            .background(Color.appPrimary)
            .font(Font.appBannerInteractive)
            .cornerRadius(3.0)
    }
}

struct DistanceController_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DistanceController(distance: "5")
                .previewLayout(.sizeThatFits)
            DistanceController(distance: "3.2")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
