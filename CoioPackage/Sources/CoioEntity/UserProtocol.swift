//
//  UserProtocol.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import Foundation

public protocol UserProtocol: Identifiable, Codable, Equatable {
    var id: String { get }
    var nickname: String { get }
    var groups: [Group] { get }
}
