// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DKCarouselView",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "DKCarouselView",
            targets: ["DKCarouselView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/CRoig/SDWebImageFLPlugin.git", .branch("feature/SPMSupport"))
    ],
    targets: [
        .target(
            name: "DKCarouselView",
            dependencies: [ "SDWebImageFLPlugin" ],
            path: "DKCarouselView",
            exclude: ["Pods", "DKCarouselViewDemo"],
            sources: ["DKCarouselView"],
            publicHeadersPath: "DKCarouselView")
    ]
)
