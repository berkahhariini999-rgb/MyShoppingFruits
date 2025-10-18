//
//  NearYouView.swift
//  MyShoppingFruit
//
//  Created by Iqbal Alhadad on 07/10/25.
//

import SwiftUI

struct NearYouView: View {
    
    let dataArray: [PlacesModel] = [
        .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "⭐ 4.7 | 📍 1.5 km", image: "1") ,
        .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "⭐ 4.5 | 📍 1.7 km", image: "2"),
        .init(id: 2, name: "Organic Farm", time: "6:00 - 11:00", rating: "⭐ 4.9 | 📍 2.0 km", image: "3"),
        .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "⭐ 5 | 📍 2.2 km", image: "4"),
        .init(id: 4, name: "Let's Shop", time: "9:00 - 10:00", rating: "⭐ 5 | 📍 2.2 km", image: "5"),
        .init(id: 5, name: "Fruit Shop", time: "9:00 - 10:00", rating: "⭐ 5 | 📍 2.2 km", image: "6")
        
    ]
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ForEach(dataArray, id: \.id){
               post in
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.gray.opacity(0.2))
                        .frame(width: 100, height: 100)
                        .overlay(Image(post.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                                 )
                    VStack(alignment: .leading){
                        Text ("\(post.name)")
                          .font(.system(.headline))
                       Text ("\(post.time)")
//                            .font(.system(.gray))
                       Text ("\(post.rating)")
                    }
                }
            }
        }
    }
}

#Preview {
    NearYouView()
}
