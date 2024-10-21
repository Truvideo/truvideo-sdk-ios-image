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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-image/releases/download/75.1.1-BETA.15/TruvideoSdkImage.xcframework.zip",
            checksum: "ec1a391b75f41604e3acffbba6b50bd24be8bc9ff750b142fe732ae766a5ff71"
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
