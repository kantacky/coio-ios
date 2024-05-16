//
//  User.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct User: Identifiable, Codable, Equatable {
    public let id: String
    public let nickname: String
    public let iconURL: String?

    public init(
        id: String,
        nickname: String,
        iconURL: String?
    ) {
        self.id = id
        self.nickname = nickname
        self.iconURL = iconURL
    }
}

#if DEBUG
public extension User {
    static let mock = User(
        id: "1",
        nickname: "かんた",
        iconURL: "https://avatars.githubusercontent.com/u/51151242?v=4"
    )
}
#endif
