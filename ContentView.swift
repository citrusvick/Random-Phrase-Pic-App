//
//  ContentView.swift
//  randomphraseandpicapp
//
//  Created by Mushik, Victoria on 3/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
            
            Button("Show Message"){
                let messages = ["You're purrfect!", "That was a total cat-astrophe.", "Be paw-sative!", "looking good, feline good~"]
                messageString = messages[Int.random(in: 0...messages.count-1)]
                
                imageName = "image\(Int.random(in:0...4))"
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
