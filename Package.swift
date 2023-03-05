// swift-tools-version:5.6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyProject",
    platforms: [
        .iOS(.v15),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.3")
    ],
    targets: [
        .executableTarget(
            name: "MyExecutableTarget",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ],
            path: "Sources/myexecutabletarget",
            sources: ["MyExecutableTarget.swift"]
        ),
        .executableTarget(
            name: "MyCatsTarget",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ],
            path: "Sources/mycatstarget",
            sources: ["MyCatsTarget.swift"]
        )
    ]
)
