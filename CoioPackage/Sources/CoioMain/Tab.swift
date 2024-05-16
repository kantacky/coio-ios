//
//  Tab.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import Foundation

enum Tab: CaseIterable, Identifiable {
    case home
    case friends
    case groups
    case settings

    var id: Self { self }

    var title: String {
        switch self {
        case .home:
            return "Home"

        case .friends:
            return "Friends"

        case .groups:
            return "Groups"

        case .settings:
            return "Settings"
        }
    }

    var systemImage: String {
        switch self {
        case .home:
            return "house"

        case .friends:
            return "person.2"

        case .groups:
            return "person.3"

        case .settings:
            return "gear"
        }
    }
}
