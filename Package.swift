// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporGraphQL",
    products: [
        .library(
            name: "VaporGraphQL",
            targets: ["VaporGraphQL"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/noahemmet/GraphQL.git", .branch("swift-42")),
        .package(url: "https://github.com/noahemmet/Graphiti.git", .branch("swift-42")),
    ],
    targets: [
        .target(
            name: "VaporGraphQL",
            dependencies: ["Vapor", "GraphQL"]),
        .testTarget(
            name: "VaporGraphQLTests",
            dependencies: ["VaporGraphQL"]),
    ]
)
