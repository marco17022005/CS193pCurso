//
//  ContentView.swift
//  Memorize
//
//  Created by Marco Antônio Pereira Prisco on 04/03/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","👺","🤯","🥳","🤥","🙄","🫨","👽","👾","😺","👹"]
    var cardCount = 4
    
    var body: some View {
        VStack{
            HStack{
                ForEach(0..<cardCount ,id: \.self){ index in
                    Cardview(content: emojis[index])
                }
            
            }
            HStack{
                
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
