////
////  HomeView.swift
////  Medifacts
////
////  Created by kwaw-kumi on 04/12/2023.
////
//
//import SwiftUI
//import Combine
//
//struct HomeView: View {
//    @StateObject private var healthFetcher = HealthFetcher()
//
//    var body: some View {
//        VStack {
//              Text(healthFetcher.healthnote)
//                .padding()
//              Button("Fetch Tip") {
//                healthFetcher.healthnote
//              }
//            }
//            .onAppear {
//                healthFetcher.fetchTips()
//            }
//    }
//}
//
//
//class HealthFetcher: ObservableObject {
//    @Published var healthnote: String = ""
//    private var cancelleable: AnyCancellable?
//    private let healthtips = [
//        "Stay Hydrated: Drink an adequate amount of water daily to maintain proper bodily functions. Water is essential for digestion, absorption of nutrients, and overall cellular health.!",
//        "Balanced Diet: Consume a variety of nutrient-rich foods, including fruits, vegetables, whole grains, lean proteins, and healthy fats. This provides your body with the necessary vitamins and minerals for optimal health.!",
//        "Regular Exercise: Engage in regular physical activity to promote cardiovascular health, maintain a healthy weight, and boost your mood. Aim for at least 150 minutes of moderate-intensity exercise per week.!",
//        "Adequate Sleep: Ensure you get 7-9 hours of quality sleep each night. Sleep is crucial for physical and mental recovery, immune function, and overall well-being.!",
//        "Mind-Body Connection: Practice stress-reducing activities such as meditation, deep breathing, or yoga. Chronic stress can negatively impact both physical and mental health.",
//        "Limit Sugar and Processed Foods: High sugar intake and processed foods can contribute to various health issues, including obesity, diabetes, and heart disease. Choose whole, unprocessed foods whenever possible."
//      ]
//}
//func fetchTips () {
//    
//}
////func fetchTips() {
////    
////    if let randomTip = healthtips.randomElement() {
////      healthnote = randomJoke
////    }
////  }
////  deinit {
////      cancelleable?.cancel()
////  }
////}
//
//
//
//struct HomeView_preview: PreviewProvider{
//    static var previews: some View{
//        NavigationView{
//            HomeView()
//        }
//    }
//}
//
//

import SwiftUI
import Combine

struct HomeView: View {
  @StateObject private var healthFetcher = HealthFetcher()

  var body: some View {
    VStack {
      Text(healthFetcher.joke)
        .padding()
      Button("Fetch Health Tip") {
          healthFetcher .fetchTip()
      }
    }
    .onAppear {
        healthFetcher.fetchTip()
    }
  }
}

class HealthFetcher: ObservableObject {
  @Published var joke: String = ""
  private var cancellable: AnyCancellable?
  private let tips = 
    [
            "Stay Hydrated: Drink an adequate amount of water daily to maintain proper bodily functions. Water is essential for digestion, absorption of nutrients, and overall cellular health.!",
            "Balanced Diet: Consume a variety of nutrient-rich foods, including fruits, vegetables, whole grains, lean proteins, and healthy fats. This provides your body with the necessary vitamins and minerals for optimal health.!",
            "Regular Exercise: Engage in regular physical activity to promote cardiovascular health, maintain a healthy weight, and boost your mood. Aim for at least 150 minutes of moderate-intensity exercise per week.!",
            "Adequate Sleep: Ensure you get 7-9 hours of quality sleep each night. Sleep is crucial for physical and mental recovery, immune function, and overall well-being.!",
            "Mind-Body Connection: Practice stress-reducing activities such as meditation, deep breathing, or yoga. Chronic stress can negatively impact both physical and mental health.",
            "Limit Sugar and Processed Foods: High sugar intake and processed foods can contribute to various health issues, including obesity, diabetes, and heart disease. Choose whole, unprocessed foods whenever possible."
          ]

  func fetchTip() {
    // Networking code here
    // Update `joke` with the result
    if let randomJoke = tips.randomElement() {
      joke = randomJoke
    }
  }

  deinit {
    cancellable?.cancel()
  }
}

struct HomeView_preview: PreviewProvider{
    static var previews: some View{
        NavigationView{
            HomeView()
        }
    }
}
