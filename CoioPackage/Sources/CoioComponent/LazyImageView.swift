//
//  LazyImageView.swift
//
//
//  Created by Kanta Oikawa on 2024/05/16.
//

import NukeUI
import SwiftUI

public struct LazyImageView<LoadingContent, ErrorContent> {
    private let url: URL?
    private let loadingContent: LoadingContent
    private let errorContent: ErrorContent
}

extension LazyImageView: View where LoadingContent: View, ErrorContent: View {
    public var body: some View {
        LazyImage(url: url) { state in
            if let image = state.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if state.error != nil {
                errorContent
            } else {
                loadingContent
            }
        }
    }
}

extension LazyImageView where LoadingContent: View, ErrorContent: View {
    public init(
        url: URL?,
        @ViewBuilder loadingContent: () -> LoadingContent,
        @ViewBuilder errorContent: () -> ErrorContent
    ) {
        self.url = url
        self.loadingContent = loadingContent()
        self.errorContent = errorContent()
    }
}

extension LazyImageView where LoadingContent: View, ErrorContent == LoadingContent {
    public init(
        url: URL?,
        @ViewBuilder loadingContent: () -> LoadingContent
    ) {
        self.url = url
        self.loadingContent = loadingContent()
        self.errorContent = loadingContent()
    }
}

#if DEBUG
#Preview {
    LazyImageView(
        url: URL(string: "https://avatars.githubusercontent.com/u/51151242?v=4")
    ) {
        Color.gray
    }
    .frame(width: 48, height: 48)
    .clipShape(Circle())
}
#endif
