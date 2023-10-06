import SwiftUI

struct SplashView: View {
    @StateObject private var viewModel = SplashViewModel()
    
    var body: some View {
        VStack {
            if viewModel.shouldNavigate {
                ContentView()
            } else {
                Text("Roundabout")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
        }
        .onAppear {
            viewModel.applicationDidLaunch()
        }
    }
}

class SplashViewModel: ObservableObject {
    @Published var shouldNavigate = false
    
    func applicationDidLaunch() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.shouldNavigate = true
        }
    }
}
