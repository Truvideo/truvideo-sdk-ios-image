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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-image/releases/download/76.2.1-BETA.22/TruvideoSdkImage.xcframework.zip",
            checksum: "c67fd1b0e7e874854ccf33b94dafef8a71e31bd07edaf94bada671c6fc03932e"
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
