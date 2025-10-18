//
//  TopSellingView.swift
//  MyShoppingFruit
//
//  Created by Iqbal Alhadad on 07/10/25.
//

import SwiftUI

struct TopSellingView: View {
    let images : [FruitModel] = [
        .init(id: 1, title: .avocado, image: "avocado", price: "IDR3.5", color: "2"),
        .init(id: 2, title: .apple, image: "apple", price: "IDR4", color: "3"),
        .init(id: 3, title: .banana, image: "banana", price: "IDR5", color: "4"),
        .init(id: 4, title: .cherry, image: "cherry", price: "IDR6", color: "5"),
        .init(id: 5, title: .apricot, image: "apricot", price: "IDR7", color: "6") ,
        .init(id: 6, title: .lemon, image: "lemon", price: "IDR8", color: "3")
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 20){
                ForEach(images,id: \.id){
                    post in
                    NavigationLink(destination: DetailViews(fruit: post.title)) {
                        
                        FruitCardView(fruits: post)
                           
                    }
                }
            }
        }
    }
}

#Preview {
    TopSellingView()
}
