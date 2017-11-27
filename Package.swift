// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "baseball-weather",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "2.3.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor"],
            exclude: [
                "Config",
                "Resources"
            ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App", "Testing"])
    ]
)
