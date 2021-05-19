import Foundation
import SwiftUI
import AVFoundation

struct myMenu: View {
    let columns = [
        GridItem(),
        GridItem()
    ]
    //var audioPlayer: AVAudioPlayer?
    var body: some View {
        let myelem = signArray
        NavigationView {
            ZStack{
                myBackground(myBackground: "H3")
                LazyVGrid(columns: columns, content: {
                    ForEach(myelem) { index in
                        NavigationLink(
                            destination: childPage (a: index),
                            label: {
                                Image(index.signIcon)
                                    .resizable()
                                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .scaledToFill()
                                    .cornerRadius(20)
                                    .opacity(0.6)
                            })
                    }
                })
                .padding(.horizontal)
                .position(x:225, y: 250.0)
                
            }
        }
    }
}
