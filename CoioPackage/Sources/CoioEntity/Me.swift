//
//  Me.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct Me: Identifiable, Codable, Equatable {
    public let me: User
    public var friends: [User]
    public var id: User.ID { me.id }

    public init(
        me: User,
        friends: [User]
    ) {
        self.me = me
        self.friends = friends
    }
}
