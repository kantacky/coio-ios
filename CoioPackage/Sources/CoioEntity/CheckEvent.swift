//
//  CheckEvent.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct CheckEvent: Identifiable, Codable, Equatable {
    public let id: String
    public var type: CheckType
    public var timestamp: Date

    public init(
        id: String,
        type: CheckType,
        timestamp: Date
    ) {
        self.id = id
        self.type = type
        self.timestamp = timestamp
    }
}
