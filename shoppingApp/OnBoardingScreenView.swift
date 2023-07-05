//
//  OnBoardingScreenView.swift
//  shoppingApp
//
//  Created by Sachin Sharma on 08/01/23.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer(minLength: 60)
                Image("1111")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                    .shadow(radius: 10, x: 20, y: 20)
                    
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order your Favourite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }
                .shadow(radius: 8)
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .shadow(radius: 12, y: 8)
                        .overlay(
                        HStack(spacing: 10){
                            Text("Next")
                                .font(.title)
                                .fontWeight(.bold)
                            Image(systemName: "chevron.right")
                        }
                            .foregroundColor(.black)
                        )
                }
                Spacer(minLength: 50)
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(false)
            .navigationBarHidden(true)
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}
