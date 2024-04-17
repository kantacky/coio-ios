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
    private let type: ButtonType
    private let action: () -> Void

    public init(
        _ labelString: String,
        fontStyle: Font = .coioSubtitle,
        type: ButtonType = .primary,
        action: @escaping () -> Void
    ) {
        self.labelString = labelString
        self.fontStyle = fontStyle
        self.type = type
        self.action = action
    }

    public enum ButtonType: CaseIterable {
        case primary
        case secondary
        case disabled

        var isDisabled: Bool {
            self == .disabled
        }

        var textColor: Color {
            switch self {
            case .primary:
                return Color.Semantic.secondaryText.color

            case .secondary:
                return Color.Semantic.primaryText.color

            case .disabled:
                return Color.Semantic.secondaryText.color
            }
        }

        var backgroundColor: Color {
            switch self {
            case .primary:
                Color.Semantic.secondaryBackground.color

            case .secondary:
                Color.Semantic.primaryBackground.color

            case .disabled:
                Color.Semantic.tertiaryBackground.color
            }
        }
    }

    public var body: some View {
        Button(action: action) {
            Text(labelString)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)
                .font(fontStyle)
                .foregroundStyle(type.textColor)
                .background(type.backgroundColor)
                .clipShape(Capsule())
        }
        .disabled(type.isDisabled)
    }
}

#Preview {
    VStack {
        ForEach(CoioButton.ButtonType.allCases, id: \.self) { type in
            CoioButton("CHECK IN", type: type) {}
        }
    }
}
