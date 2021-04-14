//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI

struct AppVersionTag: View {
    let version: String

    var body: some View {
        VStack {
            Text("Version Number")
                .font(Font.appCustomContentTitle)
                .foregroundColor(.appPrimary)
            Text(version)
                .font(Font.appCustomContentBody)
                .foregroundColor(.appOnPrimary)
        }
    }
}

struct AppVersionTag_Previews: PreviewProvider {
    static var previews: some View {
        AppVersionTag(version: "1.2.5")
            .previewLayout(.sizeThatFits)
    }
}
