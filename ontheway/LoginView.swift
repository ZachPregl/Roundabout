import SwiftUI

struct LoginView: View {
    @Binding var showFullMap: Bool
    @Binding var start: String
    @Binding var finish: String
    @Binding var pitstop: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("Roundabout")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
            VStack(spacing: 20) {
                TextField("Start", text: $start)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                TextField("Pitstop", text: $pitstop)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .overlay(
                        Color.clear
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .modifier(WidthMultiplier(multiplier: 0.75))
                    )

                TextField("Finish", text: $finish)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                Button(action: { showFullMap.toggle() }) {
                    Text("Route")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 20)
            MapView()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 20)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}
