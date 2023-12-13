

import SwiftUI
import Combine
struct Sidebar: View {
    var body: some View {
        Text("Sidebar content")
    }
}

struct HomeView: View {
  @StateObject private var healthFetcher = HealthFetcher()
  @State private var isSidebarVisible = false

  var body: some View {
      NavigationView{
              VStack {
                  Text("Discover Something New!")
                      .font(.headline)
                      .padding(5)
                      .navigationBarItems(
                          leading:
                              Button(action: {
                                  isSidebarVisible.toggle()
                              }) {
                                  Image(systemName: "list.bullet")
                                  
                              }
                            .sheet(isPresented: $isSidebarVisible, content: {
                                Sidebar()}),
                          trailing:
                              // Icon on the top-right corner
                              Image(systemName: "close")
                      )
                                     .navigationBarTitle("Dasboard", displayMode: .inline)
                  
                  Image("medicine image")
                      .imageScale(.small)
                     
                      .padding()
                  
                                Text(healthFetcher.joke)
                      .foregroundColor(.white)
                      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                      .background(Color.black)
                      .cornerRadius(10)

                      
                .padding()
              Button("Fetch Health Tip") {
                  healthFetcher .fetchTip()
                      
              }
              .padding(90)
            }
            .onAppear {
                healthFetcher.fetchTip()
                
        }
          
          }
      
  }
}

class HealthFetcher: ObservableObject {
  @Published var joke: String = ""
  private var cancellable: AnyCancellable?
  private let tips = 
    [
            "Stay Hydrated:\n\nDrink an adequate amount of water daily to maintain proper bodily functions. Water is essential for digestion, absorption of nutrients, and overall cellular health.!",
            "Balanced Diet:\n\nConsume a variety of nutrient-rich foods, including fruits, vegetables, whole grains, lean proteins, and healthy fats. This provides your body with the necessary vitamins and minerals for optimal health.!",
            "Regular Exercise:\n\nEngage in regular physical activity to promote cardiovascular health, maintain a healthy weight, and boost your mood. Aim for at least 150 minutes of moderate-intensity exercise per week.!",
            "Adequate Sleep:\n\nEnsure you get 7-9 hours of quality sleep each night. Sleep is crucial for physical and mental recovery, immune function, and overall well-being.!",
            "Mind-Body Connection:\n\nPractice stress-reducing activities such as meditation, deep breathing, or yoga. Chronic stress can negatively impact both physical and mental health.",
            "Limit Sugar and Processed Foods:\n\nHigh sugar intake and processed foods can contribute to various health issues, including obesity, diabetes, and heart disease. Choose whole, unprocessed foods whenever possible."
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
