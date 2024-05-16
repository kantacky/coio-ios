//
//  GroupView.swift
//
//
//  Created by Kanta Oikawa on 2024/05/16.
//

import CoioEntity
import SwiftUI

struct GroupView: View {
    private let me: Me
    private let group: CoioEntity.Group

    init(me: Me, group: CoioEntity.Group) {
        self.me = me
        self.group = group
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                HomeHeaderView(title: group.name, checkStatus: .checkingIn)

                VStack(alignment: .leading, spacing: 16) {
                    GroupHeaderView(landmarkName: group.landmark.name, date: Date())

                    GroupMemberRow(
                        name: String(localized: "You", bundle: .module),
                        iconURL: me.user.iconURL,
                        checkedInAt: nil,
                        checkedOutAt: nil
                    )

                    ForEach(group.members) { member in
                        GroupMemberRow(
                            name: member.nickname,
                            iconURL: member.iconURL,
                            checkedInAt: nil,
                            checkedOutAt: nil
                        )
                    }
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

#if DEBUG
#Preview {
    GroupView(me: .mock, group: .mock)
}
#endif
