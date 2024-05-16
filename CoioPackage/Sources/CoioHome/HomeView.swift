//
//  HomeView.swift
//
//
//  Created by Kanta Oikawa on 2024/04/17.
//

import ComposableArchitecture
import CoioEntity
import CoioResource
import SwiftUI

public struct HomeView: View {
    @Bindable private var store: StoreOf<HomeReducer>

    public init(store: StoreOf<HomeReducer>) {
        self.store = store
    }

    public var body: some View {
        TabView(selection: $store.selection) {
            ForEach(store.groups) { group in
                GroupView(me: store.me, group: group)
                    .tag(group.id)
            }
        }
        .overlay {
            VStack(spacing: .zero) {
                Spacer()
                TabIndicatorView(
                    groupIDs: store.groups.map(\.id),
                    selection: $store.selection
                ) { id in
                    store.send(.onSelectGroup(id: id))
                }
            }
            .padding(.bottom, 16)
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .background(Color.Semantic.primaryBackground.color)
        .onAppear { store.send(.onAppear) }
    }
}

#if DEBUG
#Preview {
    HomeView(store: Store(
        initialState: HomeReducer.State(
            me: .mock
        )
    ) {
        HomeReducer()
    })
}
#endif
