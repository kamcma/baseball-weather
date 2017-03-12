import PackageDescription

let package = Package(
    name: "baseball-weather",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1),
        .Package(url: "https://github.com/kamcma/vapor-xfp-middleware.git", majorVersion: 0)
    ]
)
