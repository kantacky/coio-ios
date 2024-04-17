// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "CoioPackage",
    defaultLocalization: "en",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "CoioComponent", targets: ["CoioComponent"]),
        .library(name: "CoioPackage", targets: ["CoioPackage"]),
    ],
    targets: [
        .target(
            name: "CoioComponent",
            dependencies: ["CoioResource"]
        ),
        .target(name: "CoioEntity"),
        .target(name: "CoioPackage"),
        .testTarget(
            name: "CoioPackageTests",
            dependencies: ["CoioPackage"]
        ),
        .target(name: "CoioResource"),
    ]
)
