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
	url: "https://github.com/tim06/FloxcoreXrayKit/releases/download/0.0.1/LibXray.xcframework.zip",
	checksum: "3fb90bf8c2b76b9e713ce27bfb0aa25a25e773431b4dee31354c23b961c26a52"
    )
  ]
)
