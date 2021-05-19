import SwiftUI

struct FirstPage: View {
    
    var body: some View {
        ZStack{
            Color.black.opacity(0.85)
                .edgesIgnoringSafeArea(.all)
                .onAppear{Sounds.play(sound: "Creepy", type: "mp3")}
            Image("I1")
                .resizable()
                .frame(width: 600, height: 850, alignment: .center)
            Text("Let's play")
                .position(x: 230.0, y: 120.0)
                .font(.system(size: 45, weight: .light, design: .serif))
                .foregroundColor(.white)
        }.onTapGesture (count: 1) {
            ViewSwitcherState.shared.showNextView()
            
        }
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FirstPage()
        }
    }
}
