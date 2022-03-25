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
                
                UIKitButtonRepresentable()
                    .frame(width: 100, height: 100)
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
