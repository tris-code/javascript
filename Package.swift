// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "JavaScript",
    products: [
        .library(name: "JavaScript", targets: ["JavaScript"]),
    ],
    dependencies: [
        .package(path: "../Test")
    ],
    targets: [
        .target(
            name: "JavaScript",
            dependencies: []),
        .testTarget(
            name: "JavaScriptTests",
            dependencies: ["Test", "JavaScript"]),
    ]
)
