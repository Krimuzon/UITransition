//
//  SecondSwiftUIView.swift
//  UITransition
//
//  Created by Anna Izzo on 24/03/22.
//

import SwiftUI

struct SecondSwiftUIView: View {
    @Binding var isPresenting: Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Text("Hello, Second World!")
                .foregroundColor(.pink)
            Button("Dismiss") {
                isPresenting.toggle()
                presentationMode.wrappedValue.dismiss()
                print(isPresenting)
            }
        }
        .ignoresSafeArea()
        .background(Color.green)
    }
}

struct SecondSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SecondSwiftUIView(isPresenting: .constant(true))
    }
}
