import PackageDescription

let package = Package(
    name: "Baseball Weather",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 0)
    ]
)