//
//  GroupMemberRow.swift
//
//
//  Created by Kanta Oikawa on 2024/04/23.
//

import CoioComponent
import CoioEntity
import CoioUtility
import SwiftUI

struct GroupMemberRow: View {
    private let name: String
    private let iconURL: String?
    private let checkedInAt: Date?
    private let checkedOutAt: Date?

    init(
        name: String,
        iconURL: String?,
        checkedInAt: Date?,
        checkedOutAt: Date?
    ) {
        self.name = name
        self.iconURL = iconURL
        self.checkedInAt = checkedInAt
        self.checkedOutAt = checkedOutAt
    }

    var body: some View {
        HStack(spacing: 8) {
            LazyImageView(
                url: URL(string: iconURL ?? "")
            ) {
                UserDefaultIcon()
            }
            .frame(width: 48, height: 48)
            .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.coioBody)
                if let checkedInAt {
                    CheckTimeView(checkedInAt: checkedInAt, checkedOutAt: checkedOutAt)
                        .frame(width: .infinity)
                } else {
                    Text("Haven't checked in yet today.", bundle: .module)
                        .font(.coioBody)
                        .foregroundStyle(Color.Semantic.tertiaryText.color)
                }
            }
        }
    }
}

#if DEBUG
#Preview {
    GroupMemberRow(
        name: "あなた",
        iconURL: nil,
        checkedInAt: .now,
        checkedOutAt: .now
    )
}
#endif
