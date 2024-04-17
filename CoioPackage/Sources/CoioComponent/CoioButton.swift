//
//  CoioButton.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import CoioResource
import SwiftUI

public struct CoioButton: View {
    private let labelString: String
    private let fontStyle: Font
    private let isDisabled: Bool
    private let action: () -> Void

    public init(
        _ labelString: String,
        fontStyle: Font,
        isDisabled: Bool = false,
        action: @escaping () -> Void
    ) {
        self.labelString = labelString
        self.fontStyle = fontStyle
        self.isDisabled = isDisabled
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(labelString)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .font(fontStyle)
                .foregroundStyle(Color.Semantic.secondaryText.color)
                .background(isDisabled ? Color.Semantic.tertiaryBackground.color : Color.Semantic.secondaryBackground.color)
                .clipShape(Capsule())
        }
        .disabled(isDisabled)
    }
}

#Preview {
    VStack {
        CoioButton("CHECK IN", fontStyle: .coioSubtitle) {}
        CoioButton("CHECK IN", fontStyle: .coioSubtitle, isDisabled: true) {}
    }
}
