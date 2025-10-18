//
//  OnBoardingScreenView.swift
//  MyShoppingFruit
//
//  Created by Iqbal Alhadad on 07/10/25.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
    
          //  Text("OnBoard Screen")
        NavigationView{
            ZStack {
            VStack(spacing:30){
                
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack (alignment: .leading, spacing: 10){
                    Text("Order your Favourite Foods")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat Fresh Fruits and Try to be Healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                    
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 250, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10){
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                   
                                Image(systemName: "chevron.right")
                            
                            } .foregroundColor(.black)
                            
                        )
                    
                }
                Spacer()
                
            }
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }

    }
}

struct OnBoardingScreenView_Previews:
    PreviewProvider {
        static var previews: some View {
            OnBoardingScreenView()
        }
    }

