//
//  UserDefaultIcon.swift
//
//
//  Created by Kanta Oikawa on 2024/04/23.
//

import SwiftUI

struct UserDefaultIcon: View {
    var body: some View {
        Image(systemName: "person.fill")
            .foregroundStyle(Color.Semantic.tertiaryAccent.color)
            .font(.system(size: 24))
            .frame(width: 48, height: 48)
            .background(
                Circle()
                    .strokeBorder(
                        Color.Semantic.tertiaryAccent.color,
                        lineWidth: 2
                    )
            )
    }
}

#Preview {
    UserDefaultIcon()
}
