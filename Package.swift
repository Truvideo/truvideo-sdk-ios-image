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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-image/releases/download/76.3.1-BETA.25/TruvideoSdkImage.xcframework.zip",
            checksum: "b128648b5849979d6944697ae32d85630bc5dcf741f2ae9a56c5f7a8f3d0c26b"
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
