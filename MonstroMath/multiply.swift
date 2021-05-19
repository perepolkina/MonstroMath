import SwiftUI
import AVFoundation

struct multiply: View {
    @State var random : Int = Int.random(in: 1..<10)
    @State var random2 : Int = Int.random(in: 1..<10)
    @State var textFieldManager = TextFieldManager()
    @State private var yes = false
     let newdigitArray =  digitArray
     @State private var showingImage = false
     
    var body: some View {
        ZStack{
            myBackground(myBackground: "H3")
            VStack(spacing: 20){
                HStack(spacing:20){
                    sizeImage(myImage: digitArray[self.random].digitIcon)
                    sizeSign(myImage: "m")
                    sizeImage(myImage: digitArray[self.random2].digitIcon)
                    
                }
                myInput(mytextField: TextField("answer", text: $textFieldManager.userInput))
                HStack(spacing: 40){
                    Button(action: {
                        self.showImage()
                        //self.textFieldManager = TextFieldManager()
                    }) {
                    DesignButton(ImageButton1: "button1", ImageButton2: "check")
                    }
                    Button(action: {
                        self.random = Int.random(in: 1..<10)
                        self.random2 = Int.random(in: 1..<10)
                        self.textFieldManager = TextFieldManager()
                    }) {
                        
                        DesignButton(ImageButton1: "button1", ImageButton2: "next")
                    }
                }
                    
            }
            if showingImage {
                ZStack{
                    myBackground(myBackground: "H3")
                    
                    if findC(a: random, b: random2) == Int(textFieldManager.userInput)  {
                        Answer(AnswerImage: "yes")
                    } else {
                        Answer(AnswerImage: "no")
                    }
                }
            }
        }
    }
    private func showImage() {
        self.showingImage = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.showingImage = false
        }
    }
}

struct multiply_Previews: PreviewProvider {
    static var previews: some View {
        multiply()
    }
}
