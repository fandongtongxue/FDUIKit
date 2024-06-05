// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FDUIKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FDUIKit",
            targets: ["FDUIKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage", from: "5.0.0"),
        .package(url: "https://github.com/CoderMJLee/MJRefresh", from: "3.0.0"),
        .package(url: "https://github.com/zenangst/Hue", from: "5.0.0"),
        .package(url: "https://github.com/SwiftKickMobile/SwiftMessages", from: "9.0.0"),
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FDUIKit",
            dependencies: ["SnapKit","SDWebImage","MJRefresh","Hue","SwiftMessages"]),
        .testTarget(
            name: "FDUIKitTests",
            dependencies: ["FDUIKit"]),
    ]
)
