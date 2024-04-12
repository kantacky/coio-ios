//
//  CheckType.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import Foundation

public enum CheckType: Identifiable, Codable, CaseIterable {
    case checkIn
    case checkOut

    public var id: Self { self }
}
