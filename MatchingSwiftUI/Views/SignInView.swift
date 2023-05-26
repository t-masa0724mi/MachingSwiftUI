import SwiftUI

struct SignInView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .center , endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    Text("Tinder")
                        .font(.system(size: 80, weight: .heavy))
                        .foregroundColor(.white)
                    
                    TextField("名前", text: self.$name)
                        .asSignInTextField()
                    
                    TextField("email", text: self.$email)
                        .asSignInTextField()
                    
                    TextField("password", text: self.$password)
                        .asSignInTextField()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("登録")
                            .foregroundColor(.white)
                    })
                    .frame(width: 200, height: 50)
                    .background(Color.pink)
                    .cornerRadius(10)
                    
                    NavigationLink(
                        destination: LogInView(),
                        label: {
                            Text("既にアカウントをお持ちの方はコチラ")
                                .font(.system(size: 15))
                        }
                    )
                }
                .padding(.horizontal, 50)
            }
            .navigationBarHidden(true)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
