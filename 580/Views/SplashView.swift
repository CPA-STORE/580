//
//  SplashView.swift
//  580
//
//  Created by Kirill Bereznev on 17/12/24.
//test

import SwiftUI

struct SplashView: View{
    @State private var isActive = false
    var body: some View {
            if isActive {
                HomeView()
            } else {
                ZStack {
                    Image("bacground2")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    
                    Image("background_coins")
                        .resizable()
                        .scaledToFill() // Растягиваем, чтобы заполнить весь экран
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .blur(radius: 3) // Легкое размытие фона
                        .edgesIgnoringSafeArea(.all)

                    
                    VStack {
                           Spacer()
                           HStack {
                               Image("girl1")
                                   .resizable()
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width: 350)
                                   .offset(x: -40, y: -182)
                               Spacer()
                           }
                       }

                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Image("loading")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 600)
                                .offset(x: 120, y: 30)
                            Spacer(minLength: 100)
                        }
                        Spacer()
                    }

                    
                    
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            isActive = true
                        }
                    }
                }
            }
        }
    }
#Preview {
    SplashView()
}
