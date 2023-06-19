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
        .package(url: "https://github.com/miniwing/FFmpeg-iOS.git", .revision("a5b268bd648f0d61179ee04aefdcbcc91cc81e5c")),
        .package(url: "https://github.com/miniwing/PythonKit.git", .branch("master")),
        .package(url: "https://github.com/miniwing/Python-iOS.git", .revision("1fa595f162b6df0dd729304ac284de8cc31b84f5")),
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
