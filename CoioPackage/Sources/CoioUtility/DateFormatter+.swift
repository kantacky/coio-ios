//
//  DateFormatter+.swift
//
//
//  Created by Kanta Oikawa on 2024/04/23.
//

import Foundation

public extension DateFormatter {
    static let coio: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd hh:mm a"
        return formatter
    }()

    static let coioTimeOnly: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter
    }()
}
