//
//  Group.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct Group: Identifiable, Codable, Equatable {
    public let id: String
    public var name: String
    public var members: [Friend]
    public var landmark: Landmark
    public var daySessions: [DaySession]

    public init(
        id: String,
        name: String,
        members: [Friend],
        landmark: Landmark,
        daySessions: [DaySession]
    ) {
        self.id = id
        self.name = name
        self.members = members
        self.landmark = landmark
        self.daySessions = daySessions
    }
}
