//
//  UIKitButtonRepresentable.swift
//  UITransition_PixelDesign
//
//  Created by Anna Izzo on 25/03/22.
//

import SwiftUI

struct UIKitButtonRepresentable: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIButton {
        let button = UIButton(type: .system)
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 100, weight: .medium, scale: .default)
        let image = UIImage(systemName: "arrow.right.circle.fill", withConfiguration: imageConfiguration)
        button.setImage(image, for: .normal)
        button.tintColor = UIColor.white
        
        let action = UIAction{_ in
            let hostingView = UIHostingController(rootView: SecondSwiftUIView())
            
            hostingView.modalPresentationStyle = .fullScreen
            hostingView.modalTransitionStyle = .flipHorizontal
            
            button.window?.rootViewController?.present(hostingView, animated: true)
        }
        
        button.addAction(action, for: .touchUpInside)
        
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        //
    }
    
    typealias UIViewType = UIButton
}

struct UIKitButtonRepresentable_Previews: PreviewProvider {
    static var previews: some View {
        UIKitButtonRepresentable()
    }
}
