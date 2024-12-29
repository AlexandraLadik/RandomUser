//
//  AsyncNetworkService.swift
//  RandomUser
//
//  Created by Александра Ладик on 24.12.2024.
//

import Foundation

actor AsyncNetworkService {
    static let shared = AsyncNetworkService(); private init() { }
    private let session = URLSession.shared
    let url = URL(string: "https://randomuser.me/api/?results=10")
    
    
    func fetchUsers() async throws ->  Results {
        guard let url = url else { throw NetworkError.badURL }
        let (data, response) = try await session.data(from: url)
        guard (response as! HTTPURLResponse).statusCode == 200 else { throw NetworkError.badResponse }
        guard let users = ParsingService.shared.parse(type: Results.self,
                                                      data: data) else { print("invalidData"); throw NetworkError.invalidData}
        return users
      
    }
    
    
}


enum NetworkError: Error {
    case badURL
    case badRequest
    case badResponse
    case invalidData
}



