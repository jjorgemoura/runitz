//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI

struct AppVersionTag: View {
    let version: String

    var body: some View {
//        Text(note)
//            .font(.system(size: 160, design: .rounded))
        VStack {
            Text("Version Number")
                .bold()
                .foregroundColor(.red)
            Text(version)
                .foregroundColor(.blue)
        }
    }
}

struct AppVersionTag_Previews: PreviewProvider {
    static var previews: some View {
        AppVersionTag(version: "1.2.5")
            .previewLayout(.sizeThatFits)
    }
}
