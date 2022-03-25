//
//  ContentView.swift
//  UITransition_PixelDesign
//
//  Created by Anna Izzo on 25/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor.black)
            VStack{
                Image("MoonPixel").resizable().aspectRatio(contentMode: .fit)
                
                Text("Tap to see the dark side of the moon")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                UIKitButtonRepresentable()
                    .frame(width: 100, height: 100)
                    
            }.padding()
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
