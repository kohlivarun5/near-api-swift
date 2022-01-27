// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

/*
 This source file is part of the Swift.org open source project

 Copyright 2015 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

import PackageDescription

let package = Package(
    name: "nearclientios",
    products: [
        .library(name: "nearclientios", targets: ["nearclientios"]),
    ],
    dependencies: [
        .package(url: "https://github.com/yannickl/AwaitKit.git",from:"5.2.0"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.0.0"),
    ],
    targets: [
        .target(
            name: "nearclientios",
            dependencies: [
              .product(name: "PromiseKit", package: "PromiseKit"),
              .product(name: "AwaitKit", package: "AwaitKit"),
            ])
    ]
)
