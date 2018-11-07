//
//  PlaidConfigurationBuilderTests.swift
//  PlaidTestTests
//
//  Created by Alexander Figueroa on 2018-11-07.
//  Copyright © 2018 AlexPlaidTest. All rights reserved.
//

import XCTest
import LinkKit
@testable import PlaidTest

class PlaidConfigurationBuilderTests: XCTestCase {
    func testPlaidBuilderDefaultsWithNilWebhook() {
        let builder = PlaidConfigurationBuilder()
        let config = builder.build(with: .auth)
        XCTAssertNil(config.webhook)
    }

    func testPlaidBuilderDefaultsWithProvidedWebhook() {
        let builder = PlaidConfigurationBuilder()
        let config = builder.build(with: .auth, webhookUrl: "www.google.com")
        XCTAssertEqual(config.webhook.absoluteString, "www.google.com")
    }
}
