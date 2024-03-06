//
//  ContentView.swift
//  Memorize
//
//  Created by Marco Antônio Pereira Prisco on 04/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            let emojis: Array<String> = ["","",]
            Cardview(content: emojis[0], isFaceUp: true)
            Cardview(content: emojis[1], isFaceUp: true)
            Cardview(content: "")
            Cardview(content: "")

            
        }
        
        .foregroundColor(.red)
        .padding()
    }
}

struct Cardview: View{
let content: String
@State var isFaceUp = false
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
                
            if isFaceUp{
                base.fill(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }
            else{
                base.fill(.red)
            }

        }
        .onTapGesture {
        isFaceUp = !isFaceUp
        }

    }
}

#Preview {
    ContentView()
}
