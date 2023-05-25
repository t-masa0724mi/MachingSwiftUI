import SwiftUI

struct TopControllView: View {
    
    enum SelectedItem {
        case tinder, good, comment, profile
    }
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    @State var selectedItem: SelectedItem = .tinder
    
    var body: some View {
        HStack {
            Button(action: {
                selectedItem = .tinder
            }, label: {
                Image(systemName: "flame.fill")
                    .asTopControllButtonImage()
                    .foregroundColor(selectedItem == .tinder ?.red : .gray)
            })
            .frame(width: frameWidth / 4 - 20)
            .padding(.leading, 30)
            Button(action: {
                selectedItem = .good
            }, label: {
                Image(systemName: "suit.diamond.fill")
                    .asTopControllButtonImage()
                    .foregroundColor(selectedItem == .good ?.yellow : .gray)
            })
            .frame(width: frameWidth / 4)
            Button(action: {
                selectedItem = .comment
            }, label: {
                Image(systemName: "bubble.left.fill")
                    .asTopControllButtonImage()
                    .foregroundColor(selectedItem == .comment ?.orange : .gray)
            })
            .frame(width: frameWidth / 4)
            Button(action: {
                selectedItem = .profile
            }, label: {
                Image(systemName: "person.crop.circle.fill")
                    .asTopControllButtonImage()
                    .foregroundColor(selectedItem == .profile ?.pink : .gray)
            })
            .frame(width: frameWidth / 4 - 20)
            .padding(.trailing, 30)
        }    }
}
