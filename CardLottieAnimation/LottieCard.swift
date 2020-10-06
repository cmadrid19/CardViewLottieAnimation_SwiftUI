//
//  LottieCard.swift
//  CardLottieAnimation
//
//  Created by Maxim Macari on 06/10/2020.
//

import SwiftUI

struct LottieCard: View {
    
    var title = "Hello"
    var icon = "faceid"
    var animate = "A"
    var color1 = Color(.blue)
    var color2 = Color(.blue).opacity(0.4)
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .top, endPoint: .bottomTrailing))
                .frame(width: 400, height: 250)
                .shadow(color: Color.gray.opacity(0.3), radius: 25, x: -10, y: 10 )
            
            ZStack{
                Circle()
                    .fill(Color.gray.opacity(0.65))
                    .frame(width: 60)
                Image(systemName: icon)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
            }
            .offset(x: 155, y: -80)
            
            Text(title)
                .foregroundColor(.white)
                .bold()
                .offset(x: -130, y: -80)
            
            LottieView(filename: animate)
                .frame(width: 250, height: 250)
        }
    }
}

struct LottieCard_Previews: PreviewProvider {
    static var previews: some View {
        LottieCard()
    }
}
