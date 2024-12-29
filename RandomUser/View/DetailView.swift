//
//  DetailView.swift
//  RandomUser
//
//  Created by Александра Ладик on 25.12.2024.
//

import SwiftUI

struct DetailView: View {
    let user: Results.User
    @State private var showPhoto = false
    
     var body: some View {
         VStack {
                     AsyncImage(url: URL(string: user.picture.medium)) { image in
                         image
                             .resizable()
                             .scaledToFill()
                             .frame(width: 344, height: 255)
                             .clipShape(RoundedRectangle(cornerRadius: 19))
                     } placeholder: {
                         Image(systemName: "photo")
                             .frame(width: 344, height: 255)
                             .background(Color.gray)
                             .clipShape(RoundedRectangle(cornerRadius: 19))
                     }
                 
             .padding(.top)
             .onTapGesture {
                 showPhoto = true
                 
             }
             .sheet(isPresented: $showPhoto) { PhotoView(user: user) }
             VStack (alignment: .leading) {
                     Text("email: ")
                         .fontWeight(.bold)
                     Text(user.email)
                         .font(.subheadline)
                         .padding(.bottom)
                     Text("name: ")
                         .fontWeight(.bold)
                     Text(user.phone)
                         .font(.subheadline)
             }
             .offset(x: -70)
             .padding()
           
         }
       
         .navigationTitle("\(user.gender == "female" ? "Mrs" : "Mr") \(user.name.first) \(user.name.last)")
         .offset(y: -150)
     }
 }


