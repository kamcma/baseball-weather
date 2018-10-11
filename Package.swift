// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "baseball-weather",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/kamcma/mlb-swift.git", from: "0.1.4"),
        .package(url: "https://github.com/pointfreeco/swift-html-vapor.git", from: "0.1.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "MLB", "HtmlVaporSupport"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
