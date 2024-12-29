//
//  ParsingService.swift
//  RandomUser
//
//  Created by Александра Ладик on 24.12.2024.
//

import Foundation

class ParsingService {
    static let shared = ParsingService(); private init() { }
    private let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        return decoder
    }()
    
   
    func parse<T: Decodable>(type: T.Type, data: Data) -> T? {
           do {
               return try decoder.decode(T.self, from: data)
           } catch {
               print("Parsing error: \(error)")
               return nil
           }
       }
    
}
