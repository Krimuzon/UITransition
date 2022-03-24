//
//  ContentView.swift
//  UITransition
//
//  Created by Cristian Amoddio on 23/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting = false
    var body: some View {
        VStack{
        Text("Hello, world!")
            .padding()
            UIKitButtonRepresentable(isPresenting: $isPresenting)
                .frame(width: 100, height: 100)
        }.background(Color.red.ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
