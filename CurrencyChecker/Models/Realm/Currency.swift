//
//  Currency.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import Foundation
import RealmSwift

class Currency: Object {
    @objc dynamic var code: String = ""
    @objc dynamic var name: String = ""

    override class func primaryKey() -> String? {
        return "code"
    }
}
