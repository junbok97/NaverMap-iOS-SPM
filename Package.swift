// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverMap-iOS-SPM",
    products: [
        .library(
            name: "NaverMap-iOS-SPM",
            targets: ["NaverMap-iOS-SPM"]),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            path: "./Frameworks/NMapsMap.xcframework"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            path: "./Frameworks/NMapsGeometry.xcframework"
        ),
        .target(
            name: "NaverMap-iOS-SPM",
            dependencies: ["NMapsMap", "NMapsGeometry"]
        )
    ]
)
