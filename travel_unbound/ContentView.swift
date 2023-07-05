//
//  ContentView.swift
//  travel_unbound
//
//  Created by Tyogo Utomo on 05/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        VStack{
            
        }
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 300, height: 300)
          .background(
            Image("/Users/tyogoutomo/Documents/travel_unbound/asset")
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: 300, height: 300)
              .clipped()
          )
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
