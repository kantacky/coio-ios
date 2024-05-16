//
//  TabIndicatorView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import CoioEntity
import CoioResource
import SwiftUI

struct TabIndicatorView: View {
    private let groupIDs: [CoioEntity.Group.ID]
    @Binding private var selection: CoioEntity.Group.ID?
    private let action: (CoioEntity.Group.ID) -> Void

    init(
        groupIDs: [CoioEntity.Group.ID],
        selection: Binding<CoioEntity.Group.ID?>,
        action: @escaping (CoioEntity.Group.ID) -> Void
    ) {
        self.groupIDs = groupIDs
        self._selection = selection
        self.action = action
    }

    var body: some View {
        HStack(spacing: 16) {
            ForEach(groupIDs, id: \.self) { id in
                Circle()
                    .fill(selection == id ? Color.Semantic.primaryAccent.color : Color.Semantic.primaryBackground.color)
                    .strokeBorder(
                        Color.Semantic.primaryAccent.color,
                        lineWidth: 2
                    )
                    .frame(width: 12, height: 12)
            }
        }
    }
}

#if DEBUG
#Preview {
    TabIndicatorView(
        groupIDs: ["0", "1", "2", "3"],
        selection: .constant("1")
    ) { _ in }
}
#endif
