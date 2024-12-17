//
//  HomeView.swift
//  580
//
//  Created by Kirill Bereznev on 17/12/24.
//
import SwiftUI


struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Добро пожаловать на HomeView")
                    .font(.title)
                    .padding()
                // Пример кнопок для навигации
                NavigationLink(destination: Text("Shop Screen")) {
                    Text("Shop")
                }
                NavigationLink(destination: Text("Daily Screen")) {
                    Text("Daily")
                }
                NavigationLink(destination: Text("Level Screen")) {
                    Text("Levels")
                }
            }
            .navigationTitle("Home")
        }
    }
}
