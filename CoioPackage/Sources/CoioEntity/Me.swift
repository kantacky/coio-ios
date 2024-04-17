//
//  Me.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct Me: UserProtocol {
    public let id: String
    public var nickname: String
    public var groups: [Group]
    public var friends: [Friend]

    public init(
        id: String,
        nickname: String,
        groups: [Group],
        friends: [Friend]
    ) {
        self.id = id
        self.nickname = nickname
        self.groups = groups
        self.friends = friends
    }
}
