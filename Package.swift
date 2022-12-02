// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "YoutubeDL-iOS",
    products: [
        .library(
            name: "YoutubeDL",
            targets: ["YoutubeDL"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/FFmpeg-iOS.git", ."0.1.0"),
        .package(url: "https://github.com/kewlbear/PythonKit.git", .branch("master")),
        .package(url: "https://github.com/kewlbear/Python-iOS.git", .branch("kivy-ios")),
    ],
    targets: [
        .target(
            name: "YoutubeDL",
            dependencies: ["Python-iOS", "PythonKit", "FFmpeg-iOS"]),
        .testTarget(
            name: "YoutubeDLTests",
            dependencies: ["YoutubeDL"]),
    ]
)
