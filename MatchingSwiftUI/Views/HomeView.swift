import SwiftUI

struct HomeView: View {
    
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var body: some View {
        VStack {
            TopControllView()
            
            CardView()
            
            BottomControllView()
        }
        
    }
}

struct CardView: View {
    
    @State var translation: CGSize = .zero
    @State var numbers = [0,1,2,3,4,5]
    
    var body: some View {
        
        GeometryReader(content: { geometory in
            
            ForEach(numbers, id: \.self) { number in
                ZStack {
                    ZStack {
                        Image("reload")
                            .resizable()
                            .scaledToFill()
                            .background(Color.white)
                        
                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black]), startPoint: .top, endPoint: .bottom)
                    }
                    .frame(width: geometory.size.width - 20, height: geometory.size.height)
                    .cornerRadius(10)
                    .padding(.all, 10)
                    .shadow(radius: 5)
                    
                    VStack {
                        HStack {
                            Text("Good")
                                .font(.system(size: 40, weight: .heavy))
                                .foregroundColor(.green)
                                .padding(.all, 5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.green, lineWidth: 4)
                                )
                            Spacer()
                            Text("Nope")
                                .font(.system(size: 40, weight: .heavy))
                                .foregroundColor(.red)
                                .padding(.all, 5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.red, lineWidth: 4)
                                )
                            
                        }
                        .padding(.all, 30)
                        
                        Spacer()
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Taro")
                                    .foregroundColor(.white)
                                    .font(.system(size: 45, weight: .heavy))
                                Text("北海道")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20, weight: .medium))
                                Text("サッカー")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight: .medium))
                                Text("サッカー大好きです")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight: .medium))
                            }
                            .padding(.leading, 20)
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "info.circle.fill")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 40, height: 40)
                            })
                            .padding(.trailing, 50)
                        }
                        .frame(width: geometory.size.width - 20)
                        .padding(.bottom, 40)
                    }
                }
                .offset(self.numbers.last == number ? translation : .zero)
                .rotationEffect(self.numbers.last == number ? .degrees(Double(self.translation.width / 300 * 20)) : .zero)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            self.translation = value.translation
                            print("value.location", value.location)
                        })
                        .onEnded({ value in
                            if value.startLocation.x - 150 > value.location.x {
                                self.translation = .init(width: -800, height: 0)
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    self.numbers.removeLast()
                                    self.translation = .zero
                                    
                                }
                            } else if value.startLocation.x + 150 < value.location.x {
                                self.translation = .init(width: 800, height: 0)
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    self.numbers.removeLast()
                                    self.translation = .zero
                                    
                                }
                                
                            } else {
                                self.translation = .zero
                            }
                        })
                )
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 1))
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
