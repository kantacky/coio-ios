//
//  Me.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct Me: Identifiable, Codable, Equatable {
    public let id: String
    public var nickname: String
    public var friends: [Friend]
    public var groups: [Group]

    public init(
        id: String,
        nickname: String,
        friends: [Friend],
        groups: [Group]
    ) {
        self.id = id
        self.nickname = nickname
        self.friends = friends
        self.groups = groups
    }
}
