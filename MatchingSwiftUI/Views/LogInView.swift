import SwiftUI

struct LogInView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    @Environment(\.presentationMode) var presentaion
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .center , endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                Text("LOGIN")
                    .font(.system(size: 80, weight: .heavy))
                    .foregroundColor(.white)
                
                TextField("email", text: self.$email)
                    .asSignInTextField()
                
                TextField("password", text: self.$password)
                    .asSignInTextField()
                
                Button(action: {
                    
                }, label: {
                    Text("ログイン")
                        .foregroundColor(.white)
                })
                .frame(width: 200, height: 50)
                .background(Color.pink)
                .cornerRadius(10)
                
                Button(action: {
                    self.presentaion.wrappedValue.dismiss()
                }, label: {
                    Text("アカウントをお持ちでない方はコチラ")
                        .font(.system(size: 15))
                })
            }
            .padding(.horizontal, 50)
        }
        .navigationBarHidden(true)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
