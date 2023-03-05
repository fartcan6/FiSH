// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "MyPackage",
    products: [
        .library(
            name: "MyPackage",
            targets: ["MyCatsTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.4")
    ],
    targets: [
        .target(
            name: "MyCatsTarget",
            dependencies: ["Alamofire"],
            path: "Sources/mycatstarget"
        ),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyCatsTarget"]
        ),
    ]
)
