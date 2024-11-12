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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-image/releases/download/76.1.1/TruvideoSdkImage.xcframework.zip",
            checksum: "3261e3a16920521762913def4836a46ddb0e442a8983d533f8a4385b4e7c1d2c"
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
