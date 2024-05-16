//
//  MainView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import CoioHome
import CoioResource
import SwiftUI

public struct MainView: View {
    public init() {}

    public var body: some View {
        TabView {
            ForEach(Tab.allCases) { tab in
                Group {
                    switch tab {
                    case .home:
                        Text("Home")

                    case .friends:
                        Text("Friends")

                    case .groups:
                        Text("Groups")

                    case .settings:
                        Text("Settings")
                    }
                }
                .ignoresSafeArea(edges: [.top])
                .tabItem {
                    Label(tab.title, systemImage: tab.systemImage)
                }
                .tag(tab)
            }
        }
        .tint(Color.Semantic.primaryAccent.color)
    }
}

#if DEBUG
#Preview {
    MainView()
}
#endif
