// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AFNetworking",
    defaultLocalization: "en",
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
            path: "AFNetworking",
 
            
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                //.headerSearchPath("UIKit+AFNetworking")
            ],
            linkerSettings: [
                .linkedFramework("MobileCoreServices", .when(platforms: [.iOS])),
                .linkedFramework("CoreGraphics", .when(platforms: [.iOS])),
                //.linkedFramework("CoreServices", .when(platforms: [.macOS])),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit", .when(platforms: [.iOS]))
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
