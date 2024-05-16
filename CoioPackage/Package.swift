// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "CoioPackage",
    defaultLocalization: "en",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "CoioComponent", targets: ["CoioComponent"]),
        .library(name: "CoioHome", targets: ["CoioHome"]),
        .library(name: "CoioMain", targets: ["CoioMain"]),
        .library(name: "CoioPackage", targets: ["CoioPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kean/Nuke", .upToNextMajor(from: "12.0.0")),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "CoioComponent",
            dependencies: [
                "CoioResource",
                .product(name: "NukeUI", package: "Nuke"),
            ]
        ),
        .target(name: "CoioEntity"),
        .target(
            name: "CoioHome",
            dependencies: [
                "CoioComponent",
                "CoioEntity",
                "CoioResource",
                "CoioUtility",
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
            ]
        ),
        .target(
            name: "CoioMain",
            dependencies: [
                "CoioHome",
            ]
        ),
        .target(
            name: "CoioPackage",
            dependencies: [
                "CoioMain",
                "CoioResource",
            ]
        ),
        .testTarget(
            name: "CoioPackageTests",
            dependencies: ["CoioPackage"]
        ),
        .target(name: "CoioResource"),
        .target(name: "CoioUtility"),
    ]
)
