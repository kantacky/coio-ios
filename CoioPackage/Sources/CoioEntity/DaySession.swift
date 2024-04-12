//
//  DaySession.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public struct DaySession: Identifiable, Codable, Equatable {
    public let id: String
    public let date: Date
    public let question: String
    public var checkEvents: [CheckEvent]

    public init(
        id: String,
        date: Date,
        question: String,
        checkEvents: [CheckEvent]
    ) {
        self.id = id
        self.date = date
        self.question = question
        self.checkEvents = checkEvents
    }
}
