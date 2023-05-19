//
//  Injectable.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import Foundation

protocol Injectable {
    associatedtype Dependency = Void
    func inject(_ dependency: Dependency)
}

extension Injectable where Dependency == Void {
    func inject(_ dependency: Dependency) {}
}
