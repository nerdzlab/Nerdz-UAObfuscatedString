// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "NerdzObfuscatedString",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "NerdzObfuscatedString",
            targets: ["NerdzObfuscatedString"]
        )
    ],
    targets: [
        .target(
            name: "NerdzObfuscatedString"
        ),
        .testTarget(
            name: "NerdzObfuscatedStringTests",
            dependencies: ["NerdzObfuscatedString"],
            swiftSettings: [
                .enableUpcomingFeature("InferSendableFromCaptures")
            ]
        )
    ]
)
