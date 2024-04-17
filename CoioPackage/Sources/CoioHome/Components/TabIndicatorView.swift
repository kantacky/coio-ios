//
//  TabIndicatorView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import CoioResource
import SwiftUI

struct TabIndicatorView: View {
    private let total: Int
    @Binding private var selection: Int

    init(total: Int, selection: Binding<Int>) {
        self.total = total
        self._selection = selection
    }

    var body: some View {
        HStack(spacing: 16) {
            ForEach(0..<total, id: \.self) { index in
                Circle()
                    .fill(selection == index ? Color.Semantic.primaryAccent.color : Color.Semantic.primaryBackground.color)
                    .strokeBorder(
                        Color.Semantic.primaryAccent.color,
                        lineWidth: 2
                    )
                    .frame(width: 12, height: 12)
            }
        }
    }
}

#Preview {
    TabIndicatorView(total: 4, selection: .constant(1))
}
