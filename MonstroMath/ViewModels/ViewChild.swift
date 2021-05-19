import SwiftUI

struct myBackground : View {
    var myBackground: String
    var body: some View {
        Image(myBackground) .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
}
struct sizeImage: View {
    var myImage: String
    var body: some View {
        Image(myImage)
            .resizable()
            .frame(width: 120, height: 120, alignment: .center)
            .cornerRadius(35.0)
            .opacity(0.6)
    }
}

struct sizeSign: View {
    var myImage: String
    var body: some View {
        Image(myImage)
            .resizable()
            .frame(width: 50, height: 50, alignment: .center)
            .cornerRadius(15.0)
            .opacity(0.6)
    }
}

struct DesignButton: View {
    var ImageButton1: String
    var ImageButton2: String
    var body: some View {
            ZStack{
            Image(ImageButton1)
                .resizable()
                .frame(width: 120, height: 120, alignment: .center)
                .opacity(0.5)
                Image(ImageButton2)
                    .resizable()
                    .frame(width: 70, height: 70, alignment: .center)
                    .opacity(0.5)
        }
    }
}
struct myInput: View {
    var mytextField: TextField<Text>
    var body: some View {
        mytextField
            .keyboardType(.decimalPad)
            .frame(width: 150, height: 65)
            .textFieldStyle(PlainTextFieldStyle())
            .background(Color.blue.opacity(0.2))
            .cornerRadius(26)
            .overlay(RoundedRectangle(cornerRadius: 26).stroke(Color.black.opacity(0.4)))
            .font(Font.system(size: 35, design: .default))
            .multilineTextAlignment(.center)
    }
}


class TextFieldManager: ObservableObject {
    
    let characterLimit = 3
    
    @Published var userInput = "" {
    
    didSet {
        if userInput.count > characterLimit {
            userInput = String(userInput.prefix(characterLimit))
        }
    }
}
}
struct Answer: View {
    var AnswerImage: String
    var body: some View {
        Image(AnswerImage)
            .resizable()
            .frame(width: 350, height: 650)
    }
}
