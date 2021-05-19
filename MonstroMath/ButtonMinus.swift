import SwiftUI

struct ButtonMinus: View {
    @State var random : Int = Int.random(in: 50..<100)
    @State var random2 : Int = Int.random(in: 1..<40)
    @State var textFieldManager = TextFieldManager()
    @State private var showingImage = false
    
    let newdigitArray =  digitArray
    var body: some View {
        ZStack{
            myBackground(myBackground: "H3")
            VStack(spacing: 20){
                HStack{
                   if sum(a: random, b: random2) > 9 {
                        sizeImage(myImage: digitArray[firstNum(a: random)].digitIcon)
                        sizeImage(myImage: digitArray[secondNum(a: random)].digitIcon)
                    } else {
                        sizeImage(myImage: digitArray[secondNum(a: random2)].digitIcon)
                    }
                }
                sizeSign(myImage: "minus")
                HStack{
                    if random2 > 9 {
                         sizeImage(myImage: digitArray[firstNum(a: random2)].digitIcon)
                         sizeImage(myImage: digitArray[secondNum(a: random2)].digitIcon)
                     } else {
                         sizeImage(myImage: digitArray[secondNum(a: random2)].digitIcon)
                     }
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
                        self.random2 = Int.random(in: 1..<99)
                        self.random = Int.random(in: random2..<100)
                        self.textFieldManager = TextFieldManager()
                    }) {
                        DesignButton(ImageButton1: "button1", ImageButton2: "next")
                    }
                }
            }
             if showingImage {
                 ZStack{
                     myBackground(myBackground: "H3")
                     
                     if substr(a: random, b: random2) == Int(textFieldManager.userInput)  {
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

struct ButtonMinus_Previews: PreviewProvider {
    static var previews: some View {
        ButtonMinus()
    }
}
