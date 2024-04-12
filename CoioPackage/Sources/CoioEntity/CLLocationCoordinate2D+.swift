//
//  CLLocationCoordinate2D+.swift
//
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import CoreLocation
import Foundation

extension CLLocationCoordinate2D: Codable, Equatable {
    private enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
    }

    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.init()
        latitude = try container.decode(CLLocationDegrees.self, forKey: .latitude)
        longitude = try container.decode(CLLocationDegrees.self, forKey: .longitude)
    }

    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
