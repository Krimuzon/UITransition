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
                    .padding()
                    .font(.largeTitle)
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.system(size: 100, weight: .medium, design: .default))
                        .foregroundColor(Color(UIColor.label))
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
