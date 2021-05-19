//
//  Division.swift
//  MonstroMath
//
//  Created by Halyna on 09/03/2021.
//

import SwiftUI

struct Division: View {
    @State var random : Int = Int.random(in: 1..<10)
    @State var random2 : Int = Int.random(in: 1..<10)
    @State var textFieldManager = TextFieldManager()
    @State private var showingImage = false
    
    let newdigitArray =  digitArray
    var body: some View {
        ZStack{
            myBackground(myBackground: "H3")
            VStack(spacing: 20){
                HStack{
                    if findC(a: random, b: random2) > 9 {
                        sizeImage(myImage: digitArray[firstNum(a: findC(a: random, b: random2))].digitIcon)
                        sizeImage(myImage: digitArray[secondNum(a: findC(a: random, b: random2))].digitIcon)
                    } else {
                        sizeImage(myImage: digitArray[secondNum(a: findC(a: random, b: random2))].digitIcon)
                    }
                }
                sizeSign(myImage: "d")
                sizeImage(myImage: digitArray[self.random2].digitIcon)
                myInput(mytextField: TextField("answer", text: $textFieldManager.userInput))
                HStack(spacing: 40){
                    Button(action: {
                        self.showImage()
                       // self.textFieldManager = TextFieldManager()
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
                     
                     if random == Int(textFieldManager.userInput)  {
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

struct Division_Previews: PreviewProvider {
    static var previews: some View {
        Division()
    }
}
