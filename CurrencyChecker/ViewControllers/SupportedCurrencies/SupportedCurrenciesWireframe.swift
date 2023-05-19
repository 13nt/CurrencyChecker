//
//  SupportedCurrenciesWireframe.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import UIKit

protocol SupportedCurrenciesWireframeProtocol {
    func routeToExchangeRates()
}

class SupportedCurrenciesWireframe: SupportedCurrenciesWireframeProtocol {

    private weak var viewController: UIViewController?

    init(for viewController: UIViewController) {
        self.viewController = viewController
    }

    func routeToExchangeRates() {
        self.viewController?.dismiss(animated: true, completion: nil)
    }
}
