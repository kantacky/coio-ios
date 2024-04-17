//
//  CoioHomeView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import CoioResource
import SwiftUI

public struct CoioHomeView: View {
    @State private var selection = 0

    public init() {}

    public var body: some View {
        TabView(selection: $selection) {
            Group {
                ScrollView {
                    VStack(alignment: .leading, spacing: .zero) {
                        HomeHeaderView(title: "てりお", checkStatus: .checkingIn)
                        VStack(alignment: .leading, spacing: 16) {
                            VStack(alignment: .leading, spacing: 8) {
                                HStack(spacing: 8) {
                                    Image(systemName: "mappin.circle")
                                        .foregroundStyle(Color.Semantic.tertiaryText.color)
                                    Text("公立はこだて未来大学")
                                }
                                .font(.coioSubtitle)

                                HStack(spacing: 8) {
                                    Image(systemName: "clock")
                                        .foregroundStyle(Color.Semantic.tertiaryText.color)
                                    Text("yyyy/MM/dd hh:mm a")
                                }
                                .font(.coioSubtitle)
                            }

                            VStack(alignment: .leading, spacing: 16) {
                                HStack(spacing: 8) {
                                    Image(systemName: "person.circle")
                                        .font(.system(size: 48))
                                        .foregroundStyle(Color.Semantic.tertiaryText.color)

                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("あなた")
                                            .font(.coioCaption)
                                        Text("本日はまだチェックインしていません。")
                                            .font(.coioBody)
                                            .foregroundStyle(Color.Semantic.tertiaryText.color)
                                    }
                                }
                            }
                        }
                        .padding(
                            EdgeInsets(
                                top: 16,
                                leading: 24,
                                bottom: 0,
                                trailing: 24
                            )
                        )
                    }
                }
                .tag(0)

                ScrollView {
                    HomeHeaderView(title: "てりお殿", checkStatus: .checkedOut)
                }
                .tag(1)

                ScrollView {
                    HomeHeaderView(title: "BuLo", checkStatus: .checkedIn)
                }
                .tag(2)
            }
            .ignoresSafeArea(edges: [.top])
        }
        .overlay {
            VStack(spacing: .zero) {
                Spacer()
                TabIndicatorView(total: 3, selection: $selection)
            }
            .padding(.bottom, 16)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .background(Color.Semantic.primaryBackground.color)
    }
}

#Preview {
    CoioHomeView()
        .ignoresSafeArea(edges: [.top])
}
