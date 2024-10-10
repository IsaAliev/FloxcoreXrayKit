// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "XrayKit",
  platforms: [.iOS(.v14), .macOS(.v14), .macCatalyst(.v16), .tvOS(.v17)],
  products: [
    .library(
        name: "XrayKit",
        targets: ["XrayKit"]
    )
  ],
  targets: [
    .target(
        name: "XrayKit",
        dependencies: ["XrayKitC", "LibXray"]
    ),
    .target(
        name: "XrayKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "LibXray",
	url: "https://github.com/tim06/XrayConfiguration/releases/download/v1.0.10/XCFramework.zip",
	checksum: "0ae1423c9047d0c67ed711652c7f8b7397efe0d72bac64221121872f1dd35636"
    )
  ]
)
