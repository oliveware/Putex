// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Putex",
    platforms: [.iOS(.v13),.macOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Putex",
            targets: ["Putex"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "http://github.com/oliveware/Fichiers", branch: "main"),
        .package(url: "http://github.com/oliveware/Taxion", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Putex",
            dependencies:["Fichiers","Taxion"]
        ),
        .testTarget(
            name: "PutexTests",
            dependencies: ["Putex"]),
    ]
)
