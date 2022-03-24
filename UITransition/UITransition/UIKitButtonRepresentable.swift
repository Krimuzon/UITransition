//
//  UIKitButtonRepresentable.swift
//  UITransition
//
//  Created by Anna Izzo on 24/03/22.
//

import SwiftUI

struct UIKitButtonRepresentable: UIViewRepresentable {
    @Binding var isPresenting: Bool
    
    func makeUIView(context: Context) -> UIButton {
        let button = UIButton(type: .system)
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 100, weight: .medium, scale: .default)
        let image = UIImage(systemName: "arrow.right.circle.fill", withConfiguration: imageConfiguration)
        button.setImage(image, for: .normal)
        button.tintColor = UIColor.label
        
        let action = UIAction{_ in
            print(isPresenting)
            isPresenting.toggle()
            print(isPresenting)
            
        }
        
        button.addAction(action, for: .touchUpInside)
        
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        let hostingView = UIHostingController(rootView: SecondSwiftUIView(isPresenting: $isPresenting))
        
        hostingView.modalPresentationStyle = .fullScreen
        hostingView.isModalInPresentation = false
        hostingView.modalTransitionStyle = .crossDissolve

        if isPresenting {
            uiView.window?.rootViewController?.present(hostingView, animated: true)
        } else {
            uiView.window?.rootViewController?.dismiss(animated: true, completion: nil)
        }
    }
    
    typealias UIViewType = UIButton
}

struct UIKitButtonRepresentable_Previews: PreviewProvider {
    static var previews: some View {
        UIKitButtonRepresentable(isPresenting: .constant(true))
    }
}
