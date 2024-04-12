//
//  Landmark.swift
//  
//
//  Created by Kanta Oikawa on 2024/04/12.
//

import CoreLocation
import Foundation

public struct Landmark: Codable, Equatable {
    public var name: String
    public var coordinate: CLLocationCoordinate2D

    public init(
        name: String,
        coordinate: CLLocationCoordinate2D
    ) {
        self.name = name
        self.coordinate = coordinate
    }
}
