//
//  Copyright © 2021  ___ORGANIZATIONNAME___ . All rights reserved.

import SwiftUI

enum StepIncrementLabelType {
    case increment
    case decrement
}

struct StepIncrementLabel: View {
    let type: StepIncrementLabelType

    var body: some View {
        switch type {
        case .increment:
            return Image(systemName: "plus.circle")
                .font(Font.title2.weight(.medium))
                .foregroundColor(.orange)
                .padding(12.0)
        case .decrement:
            return Image(systemName: "minus.circle")
                .font(Font.title2.weight(.medium))
                .foregroundColor(.orange)
                .padding(12.0)
        }
    }
}

struct SignalButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StepIncrementLabel(type: .increment)
            StepIncrementLabel(type: .decrement)
                .preferredColorScheme(.dark)
        }
    }
}
