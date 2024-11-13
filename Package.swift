// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "TruvideoSdkImage",
    products: [
        .library(
            name: "TruvideoSdkImage",
            targets: ["TruvideoSdkImageTargets"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "TruvideoSdkImage",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-image/releases/download/76.2.1/TruvideoSdkImage.xcframework.zip",
            checksum: "cd7a40e0014dd42529db5112ded5ebb530af85a9f76115aabde2850150d85638"
        ),
        .target(
            name: "TruvideoSdkImageTargets",
            dependencies: [
                .target(name: "TruvideoSdkImage")
            ],
            path: "Sources"
        )
    ]
)
