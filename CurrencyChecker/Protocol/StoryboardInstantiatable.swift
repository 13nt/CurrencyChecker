//
//  StoryboardInstantiatable.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import UIKit

protocol StoryboardInstantiatable: class, Injectable {
    static var storyboard: UIStoryboard { get }
    static func instantiate(with dependency: Dependency) -> Self
}

extension StoryboardInstantiatable {
    static func instantiate(with dependency: Dependency) -> Self {
        guard let viewController = self.storyboard.instantiateInitialViewController() as? Self else {
            fatalError("ViewController instantiation error \(String(describing: self))")
        }
        viewController.inject(dependency)
        return viewController
    }
}

extension StoryboardInstantiatable where Dependency == Void {
    static func instantiate() -> Self {
        guard let viewController = self.storyboard.instantiateInitialViewController() as? Self else {
            fatalError("ViewController instantiation error \(String(describing: self))")
        }
        return viewController
    }
}
