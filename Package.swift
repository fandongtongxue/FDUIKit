// swift-tools-version:5.7
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
        .package(url: "https://gitee.com/fandongtongxue_admin/SnapKit.git", from: "5.0.0"),
        .package(url: "https://gitee.com/fandongtongxue_admin/SDWebImage.git", from: "5.0.0"),
        .package(url: "https://gitee.com/fandongtongxue_admin/MJRefresh.git", from: "3.0.0"),
        .package(url: "https://gitee.com/fandongtongxue_admin/Hue.git", from: "5.0.0"),
        .package(url: "https://gitee.com/fandongtongxue_admin/SwiftMessages.git", from: "9.0.0"),
        
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
