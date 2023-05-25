import SwiftUI

extension Image {
    
    func asTopControllButtonImage() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 30, height: 30, alignment: .center)
    }
}
