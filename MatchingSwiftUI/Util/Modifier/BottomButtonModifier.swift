import SwiftUI

struct BottomButtonModifier: ViewModifier {
    
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: size, height: size)
            .cornerRadius(size)
            .shadow(radius: 10)

    }
}
