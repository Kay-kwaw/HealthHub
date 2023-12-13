//
//  ContentView.swift
//  Medifacts
//
//  Created by kwaw-kumi on 04/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Health Hub")
                    .font(.title)
                    .padding(10)
                Image("homeimage")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .padding()
                Text("Empowering users with valuable knowledge for informed decisions \nabout their well-being.")
                    .padding(30)
                NavigationLink(
                    destination: HomeView(), label: {
                        Text("Get Started!               ")
                            .font(.headline)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
            )
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
