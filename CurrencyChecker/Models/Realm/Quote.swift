//
//  Quote.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import Foundation
import RealmSwift

class Quote: Object {
    @objc dynamic var currencyCode: String = ""
    @objc dynamic var exchangeRateValue: Double = 0.0

    override class func primaryKey() -> String? {
        return "currencyCode"
    }
}
