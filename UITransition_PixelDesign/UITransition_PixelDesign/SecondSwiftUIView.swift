//
//  SecondSwiftUIView.swift
//  UITransition_PixelDesign
//
//  Created by Anna Izzo on 25/03/22.
//

import SwiftUI

struct SecondSwiftUIView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color(UIColor.cyan)
            VStack{
                Image("SunPixel")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                    
                Text("I don't believe in the moon, \nI think it's just the back of the sun")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                Button{
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                        .font(.system(size: 100, weight: .regular))
                        .frame(width: 100, height: 100)
                        .foregroundColor(.black)
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
