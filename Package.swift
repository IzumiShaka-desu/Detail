// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Detail",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Detail",
            targets: ["Detail"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
      .package(url: "https://github.com/IzumiShaka-desu/Common.git", .branch("main")),
      .package(url: "https://github.com/IzumiShaka-desu/Favorite-gemmu.git", .branch("main")),
      .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.5.0"),
      .package(name: "Realm", url: "https://github.com/realm/realm-cocoa.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Detail",
            dependencies: [
              "Alamofire",
              "Common",
              .product(name: "Favorite", package: "Favorite-gemmu"),
              .product(name: "RealmSwift", package: "Realm")
            ]),
        .testTarget(
            name: "DetailTests",
            dependencies: ["Detail"])
    ]
)
