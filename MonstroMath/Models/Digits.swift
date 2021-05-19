// https://pixabay.com/ru/illustrations/хэллоуин-тыква-джек-o-фонарь-2837936/    background
//https://pixabay.com/ru/service/terms/#license
//https://ru.freepik.com/free-vector/numerical-figures-and-operations_1185250.htm#page=1&query=цифры&position=37   // digits
//https://pixabay.com/ru/vectors/право-стрелка-формы-указывающий-29247/   arrow
//
//https://pixabay.com/ru/vectors/флажок-деления-ладно-право-2025986/  check
// https://pixabay.com/ru/vectors/кнопка-глянцевый-раунд-круг-синий-153680/ button

import SwiftUI

struct Digits: Identifiable {
    let id = UUID()
    var mydigit: Int
    var digitIcon: String
}
       let digitArray = [
        Digits(mydigit: 0, digitIcon: "0"),
        Digits(mydigit: 1, digitIcon: "1"),
        Digits(mydigit: 2, digitIcon: "2"),
        Digits(mydigit: 3, digitIcon: "3"),
        Digits(mydigit: 4, digitIcon: "4"),
        Digits(mydigit: 5, digitIcon: "5"),
        Digits(mydigit: 6, digitIcon: "6"),
        Digits(mydigit: 7, digitIcon: "7"),
        Digits(mydigit: 8, digitIcon: "8"),
        Digits(mydigit: 9, digitIcon: "9")
       ]
struct digitSige: View {
    var digitImage: Digits
    var body: some View {
        Image(digitImage.digitIcon)
            .resizable()
            .frame(width: 120, height: 120, alignment: .center)
            .cornerRadius(35.0)
    }
}

struct Sign: Identifiable {
    let id = UUID()
    var sign: String
    var signIcon: String
}
let signArray = [
    Sign(sign: "+", signIcon: "plus"),
    Sign(sign: "-", signIcon: "minus"),
    Sign(sign: "*", signIcon: "m"),
    Sign(sign: "/", signIcon: "d")
]

struct signSize: View {
    var signImage: Digits
    var body: some View {
        Image(signImage.digitIcon)
            .resizable()
            .frame(width: 120, height: 120, alignment: .center)
            .cornerRadius(35.0)
    }
}

struct myAnswer: Identifiable {
    let id = UUID()
    var myAnswer: String
    var AnswerImage: String
}
let answer = [
    myAnswer(myAnswer: "win", AnswerImage: "yes"),
    myAnswer(myAnswer: "loser", AnswerImage: "no")
]
