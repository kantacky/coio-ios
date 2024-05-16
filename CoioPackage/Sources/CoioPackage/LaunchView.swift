//
//  LaunchView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        Color.Semantic.primaryBackground.color
            .ignoresSafeArea()
            .overlay {
                Image.coio
                    .resizable()
                    .scaledToFit()
                    .frame(width: 128)
            }
    }
}

#if DEBUG
#Preview {
    LaunchView()
}
#endif
