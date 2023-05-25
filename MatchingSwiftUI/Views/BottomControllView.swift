import SwiftUI

struct BottomControllView: View {
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }

    var body: some View {
        HStack(spacing: 20) {
            BottomButtonView(imageName: "reload", imageSize: 50, backgroundSize: 50)
            BottomButtonView(imageName: "nope", imageSize: 25, backgroundSize: 60)
            BottomButtonView(imageName: "superlike", imageSize: 20, backgroundSize: 50)
            BottomButtonView(imageName: "like", imageSize: 25, backgroundSize: 60)
            BottomButtonView(imageName: "boost", imageSize: 20, backgroundSize: 50)
        }
        .padding()
        .frame(width: frameWidth)
    }
}

struct BottomButtonView: View {
    
    var imageName: String
    var imageSize: CGFloat
    var backgroundSize: CGFloat
    
    var body: some View {
        
        ZStack {
            Color.white
//                .frame(width: backgroundSize, height: backgroundSize)
//                .cornerRadius(backgroundSize)
//                .shadow(radius: 10)
                .asRoundShodow(size: backgroundSize)
            
            Button(action: {
                
            }, label: {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20, alignment: .center)
            })
        }
    }
}
