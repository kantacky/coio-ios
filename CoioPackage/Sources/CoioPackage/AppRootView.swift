//
//  SwiftUIView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import CoioHome
import CoioResource
import SwiftUI

struct AppRootView: View {
    var body: some View {
        TabView {
            ForEach(Tab.allCases) { tab in
                Group {
                    switch tab {
                    case .home:
                        CoioHomeView()

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

#Preview {
    AppRootView()
}
