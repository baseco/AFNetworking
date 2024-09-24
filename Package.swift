// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AFNetworking",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "AFNetworking",
            targets: ["AFNetworking"]
        )
    ],
    targets: [
        .target(
            name: "AFNetworking",
            path: ".",
            sources: [
                "AFNetworking",
                "UIKit+AFNetworking"
            ],
            publicHeadersPath: "AFNetworking",
            cSettings: [
                .headerSearchPath("AFNetworking"),
                .headerSearchPath("UIKit+AFNetworking")
            ],
            linkerSettings: [
                .linkedFramework("MobileCoreServices", .when(platforms: [.iOS])),
                .linkedFramework("CoreGraphics", .when(platforms: [.iOS])),
                .linkedFramework("CoreServices", .when(platforms: [.macOS])),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit", .when(platforms: [.iOS]))
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
