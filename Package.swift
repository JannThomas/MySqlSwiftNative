// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MySQLDriver",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "MySQLDriver",
            targets: ["MySQLDriver"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JannThomas/OpenKit.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "MySQLDriver",
            dependencies: ["OpenKit"])
    ]
)
