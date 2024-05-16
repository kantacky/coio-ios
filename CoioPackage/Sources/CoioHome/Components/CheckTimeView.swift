//
//  CheckTimeView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/23.
//

import SwiftUI

struct CheckTimeView: View {
    private let checkedInAt: Date
    private let checkedOutAt: Date?

    init(checkedInAt: Date, checkedOutAt: Date?) {
        self.checkedInAt = checkedInAt
        self.checkedOutAt = checkedOutAt
    }

    var body: some View {
        HStack(spacing: .zero) {
            Group {
                HStack(spacing: 8) {
                    Image(systemName: "figure.walk.arrival")
                        .foregroundStyle(checkedOutAt != nil ? Color.Semantic.tertiaryAccent.color : Color.Semantic.primaryAccent.color)
                    Text(DateFormatter.coioTimeOnly.string(from: checkedInAt))
                        .foregroundStyle(Color.Semantic.primaryText.color)
                }
                .font(.coioBody)
            }
            .containerRelativeFrame(
                .horizontal,
                count: 2,
                span: 1,
                spacing: 0,
                alignment: .leading
            )
            Group {
                if let checkedOutAt {
                    HStack(spacing: 8) {
                        Image(systemName: "figure.walk.departure")
                            .foregroundStyle(Color.Semantic.primaryAccent.color)
                        Text(DateFormatter.coioTimeOnly.string(from: checkedOutAt))
                            .foregroundStyle(Color.Semantic.primaryText.color)
                    }
                    .font(.coioBody)
                }
            }
            .containerRelativeFrame(
                .horizontal,
                alignment: .leading
            ) { length, axis in
                return length / 2.0
            }
            .containerRelativeFrame(
                .horizontal,
                count: 2,
                span: 1,
                spacing: 0,
                alignment: .leading
            )
        }
    }
}

#if DEBUG
#Preview {
    CheckTimeView(checkedInAt: .now, checkedOutAt: .now)
}
#endif
