// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMapsUtilsFrameworks",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoogleMapsUtilsFrameworks",
            targets: ["GoogleMapsUtilsFrameworks"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/ihodorchenko/GoogleMapsFrameworks",
            branch: "main"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GoogleMapsUtilsFrameworks",
            dependencies: [
                .product(name: "GoogleMapsFrameworks", package: "GoogleMapsFrameworks")
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("include")
            ]
        )
    ]
)
