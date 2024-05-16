//
//  HomeReducer.swift
//
//
//  Created by Kanta Oikawa on 2024/05/16.
//

import ComposableArchitecture
import CoioEntity

@Reducer
public struct HomeReducer {
    // MARK: - State
    @ObservableState
    public struct State: Equatable {
        var selection: Group.ID?
        var groups: [Group] = []
        var me: Me

        public init(me: Me) {
            self.me = me
        }
    }

    // MARK: - Action
    public enum Action: BindableAction {
        case binding(BindingAction<State>)
        case onAppear
        case onSelectGroup(id: Group.ID)
    }

    // MARK: - Dependencies

    public init() {}

    // MARK: - Reducer
    public var body: some Reducer<State, Action> {
        BindingReducer()

        Reduce { state, action in
            switch action {
            case .binding:
                return .none

            case .onAppear:
                state.groups = [.mock, .mock1, .mock2]
                state.selection = state.groups.first?.id
                return .none

            case let .onSelectGroup(id):
                state.selection = id
                return .none
            }
        }
    }
}
