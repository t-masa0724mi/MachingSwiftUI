import SwiftUI

struct HomeView: View {
    

    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
        
    var body: some View {
        VStack {
            TopControllView()
            
            Text("hello")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(Color.blue)
            
            BottomControllView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
