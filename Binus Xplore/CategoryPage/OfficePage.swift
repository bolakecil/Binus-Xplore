//
//  OfficePage.swift
//  Binus Xplore
//
//  Created by Victor Chandra on 12/07/23.
//

import Foundation
import SwiftUI

struct OfficePage: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    //Soon to be changed integrated by Core Data
    
    var body: some View {
        NavigationView {
            
            VStack {
                Spacer(minLength: 100)
                HStack(){
                    Button(action: {
                        
                    }) {
                        Label("Filter By", systemImage: "line.3.horizontal.decrease.circle.fill")
                            .font(.body)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 10.0)
                            .padding(.vertical, 8)
                            .background(Color("MainColor"))
                            .cornerRadius(12)
                    }
                    .padding(.leading, 5)
                    Spacer()
                }
                .padding()
                
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(items, id: \.self) { item in
                            Button(action: {
                                
                            }) {
                                RoundedRectangle(cornerRadius: 16)
                                    .foregroundColor(.white)
                                    .frame(width: 352.0, height: 169.0)
                                    .overlay(
                                        HStack(spacing: 8) {
                                            Image(systemName: "photo")
                                                .resizable()
                                                .padding()
                                                .frame(width: 138.0, height: 138.0)
                                                .foregroundColor(.white)
                                                .background(Color("MainColor"))
                                                .cornerRadius(8)
                                            
                                            VStack(alignment: .leading, spacing: 4) {
                                                Text("First Line")
                                                    .font(.system(size: 24))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.black)
                                                    .padding(.leading)
                                                
                                                Text("Second Line")
                                                    .foregroundColor(.black)
                                                    .padding(.leading)
                                                    .font(.system(size: 16))
                                                Text("Third Line")
                                                    .foregroundColor(.black)
                                                    .padding(.leading)
                                                    .font(.system(size: 16))
                                                
                                                
                                                
                                            }
                                            
//                                            Spacer()
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(.black)
                                                .padding()
                                            
                                            
                                        }
                                            .padding(.horizontal)
                                        
                                    )
                            }
                            
                        }
                    }
                    .padding()
                    .offset(y:-20)
                    
                    
                    
                    
                }
            }
            .background(Color(hue: 0, saturation: 0, brightness: 0.97))
            .edgesIgnoringSafeArea(.vertical)
            .navigationBarItems(
                leading: Button(action: {
                    print("button pressed")
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                        .frame(width: 40.0, height: 40.0)
                        .background(Color.white)
                        .clipShape(Circle())
                    
                }
                    .padding(.top, 15.0),
                trailing: Text("Available Offices")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.trailing, 74.0)
                    .padding(.top, 19)
            )
        }
    }
}

struct OfficePage_Previews: PreviewProvider {
    static var previews: some View {
        OfficePage()
    }
}
