//
//  View+Shadow.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import SwiftUI

public extension View {
    func coioShadow() -> some View {
        self.shadow(
            color: Color.black.opacity(0.25),
            radius: 8,
            x: 4,
            y: 4
        )
    }
}
