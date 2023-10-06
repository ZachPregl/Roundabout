import SwiftUI

struct FullMapView: View {
    @Binding var start: String
    @Binding var finish: String
    @Binding var pitstop: String
    
    var body: some View {
        ZStack {
            MapView()
                .edgesIgnoringSafeArea(.all)
            VStack {
                TextField("Start", text: $start)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .padding([.top, .horizontal])
                TextField("Pitstop", text: $pitstop)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .overlay(
                        Color.clear
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .modifier(WidthMultiplier(multiplier: 0.75))
                    )

                    .padding(.horizontal)
                TextField("Finish", text: $finish)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .padding(.horizontal)
                Spacer()
            }
        }
    }
}
