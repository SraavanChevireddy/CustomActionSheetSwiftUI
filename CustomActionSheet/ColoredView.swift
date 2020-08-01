//
//  ColoredView.swift
//  CustomActionSheet
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct ColoredView: View {
    var body: some View {
        ZStack{
            Text("Saven Developers Office")
                .foregroundColor(.secondary)
                .font(.custom("Arial MT Rounded Bold", size: 150))
            LinearGradient(gradient: Gradient(colors: [.orange,.yellow]), startPoint: .top, endPoint: .bottom)
                .opacity(0.8)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView()
    }
}
