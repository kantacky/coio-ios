//
//  HomeHeaderView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import CoioComponent
import CoioEntity
import CoioResource
import SwiftUI

struct HomeHeaderView: View {
    private let title: String
    private let checkStatus: CheckStatus
    private var textColor: Color {
        switch checkStatus {
        case .checkedOut:
            Color.Semantic.primaryText.color

        case .checkingIn:
            Color.Semantic.primaryText.color

        case .checkedIn:
            Color.Semantic.secondaryText.color
        }
    }
    private var backgroundColor: Color {
        switch checkStatus {
        case .checkedOut:
            Color.Semantic.primaryBackground.color

        case .checkingIn:
            Color.Semantic.primaryBackground.color

        case .checkedIn:
            Color.Semantic.secondaryBackground.color
        }
    }

    init(
        title: String,
        checkStatus: CheckStatus
    ) {
        self.title = title
        self.checkStatus = checkStatus
    }

    var body: some View {
        HStack {
            Text(title)
                .font(.coioTitle)
                .foregroundStyle(textColor)

            Spacer()

            switch checkStatus {
            case .checkedOut:
                CoioButton(
                    "CHECK IN",
                    type: .disabled
                ) {}

            case .checkingIn:
                CoioButton(
                    "CHECK IN",
                    type: .primary
                ) {}

            case .checkedIn:
                CoioButton(
                    "CHECK OUT",
                    type: .secondary
                ) {}
            }
        }
        .padding(
            EdgeInsets(
                top: 54,
                leading: 24,
                bottom: 16,
                trailing: 24
            )
        )
        .background(backgroundColor)
    }
}

#Preview {
    VStack {
        ForEach(CheckStatus.allCases, id: \.self) { status in
            HomeHeaderView(title: "てりお", checkStatus: status)
        }
    }
}
