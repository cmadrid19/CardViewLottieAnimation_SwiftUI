//
//  ContentView.swift
//  CardLottieAnimation
//
//  Created by Maxim Macari on 06/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        
        
        ZStack{
            LottieCard(title: "SwiftUI", icon: "qrcode.viewfinder", animate: "sending-email", color1: Color.blue, color2: Color.blue.opacity(0.6))
                .offset(y: show ? 140 : 20)
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture{
                    self.show.toggle()
                }
            
            LottieCard(title: "SwiftUI", icon: "qrcode.viewfinder", animate: "electric_car", color1: Color.purple, color2: Color.purple.opacity(0.6))
                .offset(x: show ? -300: 0)
                .rotationEffect(Angle(degrees: show ? 120 : 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture{
                    self.show.toggle()
                }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
