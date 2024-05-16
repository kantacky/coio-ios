//
//  GroupHeaderView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/23.
//

import CoioUtility
import SwiftUI

struct GroupHeaderView: View {
    private let landmarkName: String
    private let date: Date

    init(landmarkName: String, date: Date) {
        self.landmarkName = landmarkName
        self.date = date
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 8) {
                Image(systemName: "mappin.circle")
                    .foregroundStyle(Color.Semantic.tertiaryText.color)
                Text(landmarkName)
                    .lineLimit(1)
            }
            .font(.coioSubtitle)

            HStack(spacing: 8) {
                Image(systemName: "clock")
                    .foregroundStyle(Color.Semantic.tertiaryText.color)
                Text(DateFormatter.coio.string(from: date))
                    .lineLimit(1)
            }
            .font(.coioSubtitle)
        }
    }
}

#if DEBUG
#Preview {
    GroupHeaderView(landmarkName: "公立はこだて未来大学", date: Date())
}
#endif
