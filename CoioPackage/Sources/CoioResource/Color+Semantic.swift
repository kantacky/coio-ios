//
//  Color+Semantic.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import SwiftUI

public extension Color {
    enum Semantic {
        case primaryBackground
        case secondaryBackground
        case tertiaryBackground
        case primaryText
        case secondaryText
        case tertiaryText
        case primaryAccent
        case secondaryAccent
        case tertiaryAccent
        case primaryBorder
        case primaryAlert
    }
}

public extension Color.Semantic {
    var color: Color {
        switch self {
        case .primaryBackground:
            return Color(.coioBeidge)

        case .secondaryBackground:
            return Color(.coioPurple)

        case .tertiaryBackground:
            return Color(.coioGray)

        case .primaryText:
            return Color(.coioBlack)

        case .secondaryText:
            return Color(.coioBeidge)

        case .tertiaryText:
            return Color(.coioGray)

        case .primaryAccent:
            return Color(.coioPurple)

        case .secondaryAccent:
            return Color(.coioGreen)

        case .tertiaryAccent:
            return Color(.coioGray)

        case .primaryBorder:
            return Color(.coioGray)

        case .primaryAlert:
            return Color(.coioRed)
        }
    }
}
