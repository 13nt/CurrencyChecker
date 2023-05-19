//
//  ExchangeRatesWireframe.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import RxCocoa
import RxSwift
import UIKit

protocol ExchangeRatesWireframeProtocol {
    func routeToSupportedCurrencies(with currencyCode: BehaviorRelay<String>)
}

class ExchangeRatesWireframe: ExchangeRatesWireframeProtocol {

    private weak var viewController: UIViewController?

    init(for viewController: UIViewController) {
        self.viewController = viewController
    }

    func routeToSupportedCurrencies(with currencyCode: BehaviorRelay<String>) {
        let dependency = SupportedCurrenciesViewController.Dependency(currencyCode: currencyCode)
        let destinationVC = SupportedCurrenciesViewController.instantiate(with: dependency)
        let navigationVC = UINavigationController(rootViewController: destinationVC)
        self.viewController?.present(navigationVC, animated: true)
    }

}
