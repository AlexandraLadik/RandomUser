//
//  Results.swift
//  RandomUser
//
//  Created by Александра Ладик on 24.12.2024.
//

import Foundation

struct Results: Decodable {
    var results: [User] = []
    struct User: Decodable {
        let gender: String
       let name: Name
        struct Name: Decodable {
            let title: String
            let first: String
            let last: String
        }
       // let location: Location
//        struct Location: Decodable {
//            let street: Street
//            struct Street: Decodable {
//                let number: Int
//                let name: String
//            }
//                let city: String
//                let state: String
//                let country: String
//                let postcode: Int
//                let coordinates: Coordinates
//                struct Coordinates: Decodable {
//                    let latitude: String
//                    let longitude: String
//                }
//                let timezone: Timezone
//                struct Timezone: Decodable {
//                    let offset: String
//                    let description: String
//                }
//            }
            
        let email: String
        let login: Login
        struct Login: Decodable {
            let uuid: String
            let username: String
            let password: String
            let salt: String
            let md5: String
            let sha1: String
            let sha256: String
            
        }
        let dob: Dob
        struct Dob: Decodable {
            let date: String
            let age: Int
        }
        
    let phone: String
      let cell: String
        
        let id: Id
        struct Id: Decodable {
            let name: String
            let value: String?
        }
        
       let picture: Picture
        struct Picture: Decodable {
            let large: String
            let medium: String
            let thumbnail: String
        }
       
           
            let registred: Registred?
            struct Registred: Decodable {
                let date: String
                let age: Int
            }
            
            
            let nat: String
            
        }
}

struct info: Decodable {
    let seed: String
    let results: Int
    let page: Int
    let version: String
}
