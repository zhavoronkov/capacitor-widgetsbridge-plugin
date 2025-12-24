// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorWidgetsbridgePlugin",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "CapacitorWidgetsbridgePlugin",
            targets: ["WidgetsBridgePlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "8.0.0")
    ],
    targets: [
        .target(
            name: "WidgetsBridgePlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Plugin")
    ]
)
