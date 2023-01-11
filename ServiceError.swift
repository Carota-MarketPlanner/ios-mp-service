//
//  ServiceError.swift
//  MPService
//
//  Created by Elias Ferreira on 11/01/23.
//

import Foundation

public enum ServiceError: Error, LocalizedError {
    case invalidURL
    case invalidResponseStatus
    case dataTaskError(String?)
    case corruptData
    case decodinError(String)
    
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return NSLocalizedString("The endpoint url is invalid", comment: "")
        case .invalidResponseStatus:
            return NSLocalizedString("The API faild to issue a valid response", comment: "")
        case .dataTaskError(let localizedDescription):
            return localizedDescription
        case .corruptData:
            return NSLocalizedString("The data provaided apears to be corrupted", comment: "")
        case .decodinError(let localizedDescription):
            return localizedDescription
        }
    }
}
