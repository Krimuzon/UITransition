//
//  ContentView.swift
//  UITransition
//
//  Created by Cristian Amoddio on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color(UIColor.red)
            VStack{
                Text("Hello, world!")
                    .font(.largeTitle)
                    .padding()
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 100, weight: .medium, design: .default))
                    .overlay {
                        UIKitButtonRepresentable()
                    }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
