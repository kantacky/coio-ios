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
    public var members: [User]
    public var landmark: Landmark
    public var daySessions: [DaySession]

    public init(
        id: String,
        name: String,
        members: [User],
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

#if DEBUG
public extension Group {
    static let mock = Group(
        id: "1",
        name: "てりお",
        members: [User.mock],
        landmark: Landmark.mock,
        daySessions: [DaySession.mock]
    )

    static let mock1 = Group(
        id: "2",
        name: "てりお殿",
        members: [User.mock],
        landmark: Landmark.mock,
        daySessions: [DaySession.mock]
    )

    static let mock2 = Group(
        id: "3",
        name: "BuLo",
        members: [User.mock],
        landmark: Landmark.mock,
        daySessions: [DaySession.mock]
    )
}
#endif
