//
//  LottieView.swift
//  CardLottieAnimation
//
//  Created by Maxim Macari on 06/10/2020.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable{
    
    
    
    let animationView = AnimationView()
    var filename = "vcTransition2"

    
    func makeUIView(context: UIViewRepresentableContext <LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        let animation = Animation.named(filename)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate(
            [
                animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
                animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
            ]
        )
        return view
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext <LottieView>) {
        
    
    }

}
   
