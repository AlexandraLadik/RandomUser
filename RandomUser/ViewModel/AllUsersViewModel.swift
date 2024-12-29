//
//  AllUsersViewModel.swift
//  RandomUser
//
//  Created by Александра Ладик on 27.12.2024.
//

import SwiftUI

@Observable
class AllUsersViewModel {
    var users: Results = Results(results: [])
    init() {
        fetchDataAsync()
    }
        func fetchDataAsync() {
            Task {
                let results = try await AsyncNetworkService.shared.fetchUsers()
                await MainActor.run { self.users = results }
            }
        }
    }

