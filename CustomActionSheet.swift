//
//  CustomActionSheet.swift
//  CustomActionSheet
//
//  Created by Sraavan Chevireddy on 8/1/20.
//  Copyright © 2020 Saven Developers Office. All rights reserved.
//

import SwiftUI

struct CustomActionSheet: View {
    
    @State var notifications : Bool = false
    @State var likes : Bool = false
    @State var comments : Bool = false
    @State var subtitles : Bool = false
    
    var body: some View {
        VStack(spacing: 15){
            Toggle(isOn: $notifications) {
                Text("Notifications")
                    .font(.title)
            }
            Toggle(isOn: $likes) {
                Text("Likes")
                .font(.title)
            }
            Toggle(isOn: $comments) {
                Text("Comments")
                    .font(.title)
            }
            Toggle(isOn: $subtitles) {
                Text("Subtitles")
                .font(.title)
            }
        }
        .padding(.bottom, (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 10)
        .padding(.horizontal)
        .padding(.top, 20)
        .background(Color.blue)
    .cornerRadius(25)
        
    }
}

struct CustomActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        CustomActionSheet()
    }
}
