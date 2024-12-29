//
//  PhotoView.swift
//  RandomUser
//
//  Created by Александра Ладик on 25.12.2024.
//

import SwiftUI

struct PhotoView: View {
    let user: Results.User
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: user.picture.large)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 19))
            } placeholder: {
                Image(systemName: "photo")
                    .frame(width: 300, height: 300)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 19))
            }
        }
    }
}


