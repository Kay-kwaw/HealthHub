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
                Image("medicine image")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Health Hub")
                    .font(.headline)
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
