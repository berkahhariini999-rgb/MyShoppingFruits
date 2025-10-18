//
//  HomeScreen.swift
//  MyShoppingFruit
//
//  Created by Iqbal Alhadad on 07/10/25.
//

import SwiftUI

struct HomeScreen:View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            HStack {
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
                
                
            }
            .font(.system(.title3))
            
            Text("Hey")
                .font(.title)
                .fontWeight(.bold)
            Text("Find fresh fruits that you love")
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.3))
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search Fresh Fruits")
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }.padding()
                ).frame(width: 350, height: 50, alignment: .center)
            Text("Top Selling")
                .font(.title)
                .fontWeight(.bold)
            TopSellingView()

            Text("Hear You")
                .font(.title)
                .fontWeight(.bold)
            NearYouView()
            Spacer()
    
        }.padding()
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
