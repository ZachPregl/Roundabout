import SwiftUI

struct LoginView: View {
    @Binding var showFullMap: Bool
    @Binding var start: String
    @Binding var finish: String
    @Binding var pitstop: String
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Roundabout")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                
                VStack(spacing: 20) {
                    TextField("Start", text: $start)
                        .textFieldStyle()
                    
                    TextField("Pitstop", text: $pitstop)
                        .textFieldStyle()
                        
                    
                    TextField("Finish", text: $finish)
                        .textFieldStyle()
                    
                    Button(action: { showFullMap.toggle() }) {
                        Text("Go Roundabout")
                            .buttonStyle()
                    }
                    .frame(width: geometry.size.width - 40)
                   
                }
                .padding(.horizontal, 20)
                
                MapView()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal, 20)
                    .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

extension View {
    func textFieldStyle() -> some View {
        self
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
    }
    
    func buttonStyle() -> some View {
        self
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .background(Color.accentColor)
            .cornerRadius(10)
    }
}

struct MapsView: View {
    var body: some View {
        MapView()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, 20)
                        .edgesIgnoringSafeArea(.bottom)
    }
}

