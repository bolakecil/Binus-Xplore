//
//  SplashScreenView.swift
//  travel_unbound
//
//  Created by Tyogo Utomo on 05/07/23.
//

import Foundation
import SwiftUI

struct SplashScreenView: View{
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View{
        VStack{
            Image("Binus Xplore")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .clipped()
        }
    }
    
}

struct SplashScreenView_Preview: PreviewProvider{
    static var previews: some View{
        SplashScreenView()
    }
}
