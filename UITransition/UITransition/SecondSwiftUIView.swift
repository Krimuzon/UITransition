//
//  SecondSwiftUIView.swift
//  UITransition
//
//  Created by Anna Izzo on 24/03/22.
//

import SwiftUI

struct SecondSwiftUIView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color(UIColor.yellow)
            VStack{
                Text("Hello, Second World!")
                Button("Dismiss") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .ignoresSafeArea()

    }
}

struct SecondSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SecondSwiftUIView()
    }
}
