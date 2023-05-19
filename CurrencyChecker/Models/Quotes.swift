//
//  Quotes.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import Foundation

struct Quotes: Decodable {
    typealias CurrencyPair = String

    var success: Bool
    var timestamp: Double // Unix timestamp
    var source: String
    var quotes: [CurrencyPair: Double]
}
