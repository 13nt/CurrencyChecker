//
//  CurrencyLayerRouter.swift
//  CurrencyChecker
//
//  Created by Aent Bhone Aung on 19/05/2023.
//

import Alamofire
import Foundation

enum CurrencyLayerRouter: URLRequestConvertible {

    private enum Constants {
        static let baseURLPath = "https://api.apilayer.com/currency_data"
        static let apiKey = "xE7rL5V3QnsTkvDtqDAUwqHyVchKpQRQ"
    }

    case currencies
    case quotes

    var method: HTTPMethod {
        switch self {
        case .currencies, .quotes:
            return .get
        }
    }

    var path: String {
        switch self {
        case .currencies:
            return "/list"
        case .quotes:
            return "/live"
        }
    }

    var parameters: [String: Any] {
        switch self {
        case .currencies, .quotes:
            return ["apikey": Constants.apiKey]
        }
    }

    func asURLRequest() throws -> URLRequest {
        let url = try Constants.baseURLPath.asURL()

        var request = URLRequest(url: url.appendingPathComponent(path))
        request.httpMethod = method.rawValue

        return try URLEncoding.default.encode(request, with: parameters)
    }

}
