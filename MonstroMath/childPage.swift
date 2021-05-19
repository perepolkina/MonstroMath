
import SwiftUI

struct childPage: View {
   var a: Sign

    var body: some View {
        ZStack{
            if a.sign == "+"{
                ButtonPlus()
            } else if a.sign == "-"{
                ButtonMinus()
            } else if a.sign == "/"{
                Division()
            } else if a.sign == "*"{
               multiply()
            }
        }
    }
}
struct childPage_Previews: PreviewProvider {
    static var previews: some View {
        childPage(a: Sign(sign: "+", signIcon: "plus"))
    }
}
