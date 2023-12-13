import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
                    destination: HomeView()
                        .navigationBarBackButtonHidden(true), // Hide back button in HomeView
                    label: {
                        Text("Get Started!               ")
                            .font(.headline)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    })
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
