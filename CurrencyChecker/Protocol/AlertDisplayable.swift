//
//  AlertDisplayable.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import UIKit

protocol AlertDisplayable {
    func showAlert(title: String?, message: String?, actions: [UIAlertAction])
}

extension AlertDisplayable where Self: UIViewController {

    func showErrorAlert(_ error: APIError) {
        self.showAlert(
            title: "Error",
            message: error.message,
            actions: [UIAlertAction(title: "OK", style: .default)]
        )
    }

    func showAlert(
        title: String?,
        message: String?,
        actions: [UIAlertAction]
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach {
            alert.addAction($0)
        }
        self.present(alert, animated: true, completion: nil)
    }

}
