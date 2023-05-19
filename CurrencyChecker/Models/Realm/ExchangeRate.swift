//
//  ExchangeRate.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import Foundation

struct ExchangeRate {
    let targetCurrencyCode: String
    let value: Double
}

extension ExchangeRate {
    var displayedValue: String {
        return String(format: "%.3f", self.value)
    }
}

extension ExchangeRate: Equatable {}
