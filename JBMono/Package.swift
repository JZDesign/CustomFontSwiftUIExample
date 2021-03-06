// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JBMono",
    platforms: [.iOS(.v15), .macOS(.v12), .watchOS(.v8), .tvOS(.v15)],
    products: [
        .library(
            name: "JBMono",
            targets: ["JBMono"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "JBMono",
            dependencies: [],
            resources: [.process("Fonts")]
        ),
        .testTarget(
            name: "JBMonoTests",
            dependencies: ["JBMono"]),
    ]
)
