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
            Cardview(isFaceUp: true)
            Cardview()
            Cardview()
            Cardview()

            
        }
        

        .padding()
    }
}

struct Cardview: View{
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 3)
            Text("👻").font(.largeTitle)

        }

    }
}

#Preview {
    ContentView()
}
