//
//  Friend.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct Friend: UserProtocol {
    public let id: String
    public let nickname: String
    public let groups: [Group]

    public init(
        id: String,
        nickname: String,
        groups: [Group]
    ) {
        self.id = id
        self.nickname = nickname
        self.groups = groups
    }
}
