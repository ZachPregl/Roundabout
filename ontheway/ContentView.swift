import SwiftUI

struct ContentView: View {
    @State private var start = ""
    @State private var finish = ""
    @State private var pitstop = ""
    @State private var showFullMap = false
    
    var body: some View {
        ZStack {
            if showFullMap {
                FullMapView(start: $start, finish: $finish, pitstop: $pitstop)
            } else {
                LoginView(showFullMap: $showFullMap, start: $start, finish: $finish, pitstop: $pitstop)
            }
        }
        .transition(.move(edge: .bottom))
        .animation(.default, value: showFullMap)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
