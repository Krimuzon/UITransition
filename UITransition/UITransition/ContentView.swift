//
//  ContentView.swift
//  UITransition
//
//  Created by Cristian Amoddio on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack{
                Text("Hello, world!")
                    .padding()
                UIKitButtonRepresentable()
                    .frame(width: 100, height: 100)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
