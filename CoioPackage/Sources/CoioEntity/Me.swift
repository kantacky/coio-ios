//
//  Me.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct Me: Identifiable, Codable, Equatable {
    public let user: User
    public var friends: [User]
    public var id: User.ID { user.id }

    public init(
        user: User,
        friends: [User]
    ) {
        self.user = user
        self.friends = friends
    }
}

#if DEBUG
public extension Me {
    static let mock = Me(
        user: .mock,
        friends: []
    )
}
#endif
