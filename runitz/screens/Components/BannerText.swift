//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI

struct BannerText: View {
    let data: [String]

    var body: some View {
        HStack(alignment: .center) {
            ForEach(data, id: \.self) { item in
                Text(item)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.orange)
                    .font(Font.title2.weight(.semibold))
                    .cornerRadius(5.0)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(5.0)
    }
}

struct BannerText_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BannerText(data: ["5.00 Km", "3.00 miles", "14000 feet"])
            BannerText(data: ["5.00 Km | ---"])
                .preferredColorScheme(.dark)
        }
    }
}
