//
//  ButtonView.swift
//  HW 3.1 traffic light
//
//  Created by Dmitry Tokarev on 10.12.2020.
//

import SwiftUI

struct ButtonView: View {
    
    var myAction: Void
    var longPressAction: Void
    
    init(action: Void, longPressAction: Void) {
        self.myAction = action
        self.longPressAction = longPressAction
    }
  
    var body: some View {
        ZStack {
            Image("43098")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Button(action: {self.myAction} ){
                Circle()
                    .colorMultiply(.primary)
                    .frame(width: 65, height: 65)
                    .opacity(0.5)
                    .offset(x: 0, y: -2)
                    .onTapGesture(perform: {myAction})
                    .onLongPressGesture(minimumDuration: 0.1, maximumDistance: 10) {longPressAction}
            }
        }
 
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
