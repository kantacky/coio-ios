//
//  CheckEvent.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct CheckEvent<User>: Identifiable, Codable, Equatable where User: UserProtocol {
    public let id: String
    public let timestamp: Date
    public let user: User
    public let type: CheckType

    public init(
        id: String,
        timestamp: Date,
        user: User,
        type: CheckType
    ) {
        self.id = id
        self.timestamp = timestamp
        self.user = user
        self.type = type
    }
}
