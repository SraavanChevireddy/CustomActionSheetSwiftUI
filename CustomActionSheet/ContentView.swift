//
//  ContentView.swift
//  CustomActionSheet
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showAction = false
    @State var coloredView = false
    var body: some View {
        ZStack{
            VStack{
                // Action sheet Button
                Button(action: {
                    self.showAction.toggle()
                    print("Changing the alert action!")
                }){
                    Text("Action Sheet")
                        .font(.title)
                }
                
                Button(action: {
                    self.coloredView.toggle()
                }){
                    Text("Colored View")
                        .foregroundColor(.secondary)
                }.sheet(isPresented: $coloredView) {
                    ColoredView()
                }
                
            }
            
            VStack{
                Spacer()
                CustomActionSheet().offset(y: self.showAction ? 0 : UIScreen.main.bounds.height)
            }.background((self.showAction ? Color.black.opacity(0.3) : Color.clear).edgesIgnoringSafeArea(.all).onTapGesture {
                print("Action performed on tapping the background!")
                self.showAction.toggle()
            })
            .edgesIgnoringSafeArea(.bottom)
        }
        .animation(.default)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
