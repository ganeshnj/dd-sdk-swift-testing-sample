// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Example",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Example",
            targets: ["Example"]),
    ],
    dependencies: [
        .package(url: "https://github.com/DataDog/dd-sdk-swift-testing.git", from: "2.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Example"),
        .testTarget(
            name: "ExampleTests",
            dependencies: [
                "Example",
                .product(name: "DatadogSDKTesting", package: "dd-sdk-swift-testing")
            ]),
    ]
)
