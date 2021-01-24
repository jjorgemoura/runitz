//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI

struct UnitSwitchButton: View {
    let unit: String

    var body: some View {
        Button(unit) {
//            viewStore.send(AppAction.switchToNextDistanceUnit)
        }
        .padding(EdgeInsets(top: 12, leading: 12, bottom: 12, trailing: 12))
        .foregroundColor(.appOnSecondary)
        .background(Color.appSecondary)
        .font(Font.appBannerInteractive)
    }
}

struct UnitSwitchButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UnitSwitchButton(unit: "Km")
                .previewLayout(.sizeThatFits)
            UnitSwitchButton(unit: "m")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
