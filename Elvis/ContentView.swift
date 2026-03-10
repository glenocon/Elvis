//
//  ContentView.swift
//  Elvis
//
//  Created by Glen O'Connor on 10/3/2026.
//

import SwiftUI

struct ContentView: View {
    
    
    let peaceSign = "peacesign"
    let heart = "heart"
    let understanding = "lightbulb"
    @State private var message: String = ""
    @State private var imageText: String = ""
    
    var body: some View {
        VStack {
            Text("What's SO Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            
            Image(systemName: message)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)

            Text(imageText)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    imageText = "Peace"
                    message = peaceSign
                }
                Button("Love") {
                    imageText = "Love"
                    message = heart
                }
                Button("Understanding") {
                    imageText = "Understanding"
                    message = understanding
                }
            }
            .tint(.purple)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
