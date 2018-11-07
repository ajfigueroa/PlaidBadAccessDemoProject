//
//  PlaidConfigurationBuilder.swift
//  PlaidTest
//
//  Created by Alexander Figueroa on 2018-11-07.
//  Copyright © 2018 AlexPlaidTest. All rights reserved.
//

import Foundation
import LinkKit

class PlaidConfigurationBuilder {
    func build(with product: PLKProduct, webhookUrl: String? = nil) -> PLKConfiguration {
        let config = PLKConfiguration(key: "somekey", env: .development, product: product)
        if let webhookUrl = webhookUrl, let url = URL(string: webhookUrl) {
            config.webhook = url
        }
        return config
    }
}
