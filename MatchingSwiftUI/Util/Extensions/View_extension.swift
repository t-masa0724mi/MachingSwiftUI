import SwiftUI

extension View {
    func asRoundShodow(size: CGFloat) -> some View {
        modifier(BottomButtonModifier(size: size))
    }
}
