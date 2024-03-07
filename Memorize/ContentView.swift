//
//  ContentView.swift
//  Memorize
//
//  Created by Marco Antônio Pereira Prisco on 04/03/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻","👹","😺","😯","🥳","🤯","👺","👾","👽","🫨","🙄","🤥"]
    var body: some View {
        HStack{
            ForEach(emojis.indices,id: \.self){ index in
                Cardview(content: emojis[index])
            }
            
        }
        
        .foregroundColor(.red)
        .padding()
    }
}

struct Cardview: View{
let content: String
@State var isFaceUp = true
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
