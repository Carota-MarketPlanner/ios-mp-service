//
//  Service.swift
//  iOS Concurrency
//
//  Created by Elias Ferreira on 10/01/23.
//

import Foundation

protocol Service {
    
    /// The base URL to the API.
    var baseURL: String { get }
    
    /// Get function using async and await.
    func request<T: Decodable>(_ endpoint: String, method: HTTPMethod) async throws -> T
    
    /// Get function using clousure.
    func request<T: Decodable>(_ endpoint: String, method: HTTPMethod, completion: @escaping (Result<T, ServiceError>) -> Void)
    
}
