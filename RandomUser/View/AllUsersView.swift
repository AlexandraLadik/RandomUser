//
//  AllUsersView.swift
//  RandomUser
//
//  Created by Александра Ладик on 25.12.2024.
//

import SwiftUI

struct AllUsersView: View {
    @State var viewModel = AllUsersViewModel()
    
    let layout: [GridItem] = [.init(), .init()]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 5) {
                    ForEach(viewModel.users.results, id: \.email) { user in
                        NavigationLink {
                            DetailView(user: user)
                        } label: {
                            AsyncImage(url: URL(string: user.picture.thumbnail)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 166, height: 158)
                                    .clipShape(RoundedRectangle(cornerRadius: 19.0))
                                    
                            } placeholder: {
                                Image(systemName: "photo")
                                    .frame(width: 166, height: 158)
                                    .background(Color.gray)
                                    .clipShape(RoundedRectangle(cornerRadius: 19.0))
                                    
                            }
                            .padding()
                        }
                       
                        
                    }
                    
                } .navigationTitle("Пользователи")
                
            }
            .scrollIndicators(.hidden)
            .padding(20)
            
        }
    }
}
    

    

       


#Preview {
    AllUsersView()
}
