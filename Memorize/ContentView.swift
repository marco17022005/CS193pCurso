//
//  ContentView.swift
//  Memorize
//
//  Created by Marco Antônio Pereira Prisco on 04/03/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻","👹","😺","😯","🥳","🤯","👺","👾","👽","🫨","🙄","🤥"]
    
   @State var cardCount = 4
    
    var body: some View {
        VStack{
            cardsDisplay
            Spacer()
            cardCountAdjusters
        }
        .padding()
        
    }
    
    var cardsDisplay: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount,id: \.self){ index in
            Cardview(content: emojis[index])
            }
        }
        .foregroundColor(.red)
    }
    
    var cardCountAdjusters : some View {
        HStack{
            cardAdd
            Spacer()
            cardRemover
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    func cardCountAdjuster(by offset: Int , symbol: String) -> some View {
        Button(action: {
            cardCount += offset
            
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    var cardRemover: some View {
        cardCountAdjuster(by: -1, symbol: "minus.circle" )
    }
    
    var cardAdd: some View {
        cardCountAdjuster(by: +1, symbol: "rectangle.portrait.badge.plus")
    }
}

struct Cardview: View{
let content: String
@State var isFaceUp = true
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
                
            Group {
                base.fill(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1: 0)
            base.fill().opacity(isFaceUp ? 0: 1)

        }
        .onTapGesture {
        isFaceUp = !isFaceUp
        }

    }
}

#Preview {
    ContentView()
}
