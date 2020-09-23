// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftMultihash",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftMultihash",
            targets: ["SwiftMultihash"]),
    ],
    dependencies: [
        .package(url: "https://github.com/merenkoff/SwiftHex", from: "0.4.5"),
        .package(url: "https://github.com/keefertaylor/Base58Swift.git", from: "2.1.0"),
        .package(url: "https://github.com/NeoTeo/VarInt", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftMultihash",
            dependencies: ["SwiftHex", "Base58Swift", "VarInt"]),
        .testTarget(
            name: "SwiftMultihashTests",
            dependencies: ["SwiftMultihash"]),
    ]
)
