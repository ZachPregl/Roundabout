import SwiftUI

struct WidthMultiplier: ViewModifier {
    let multiplier: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
            .background(GeometryReader { geometry in
                Color.clear.preference(key: WidthKey.self, value: geometry.size.width)
            })
            .onPreferenceChange(WidthKey.self) { width in
                let newWidth = width * multiplier
                print("Width: \(newWidth)")
            }
    }
}

struct WidthKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
