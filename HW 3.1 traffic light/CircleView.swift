//
//  CircleView.swift
//  HW 3.1 traffic light
//
//  Created by Dmitry Tokarev on 10.12.2020.
//

import SwiftUI

struct CircleView: View {
    
    private var red = 0.1
    private var yellow = 0.1
    private var green = 0.1
    
    init(red: Double, yellow: Double, green: Double) {
        self.red = red
        self.yellow = yellow
        self.green = green
    }
    
    var body: some View {
        VStack {
            Color(.red)
                .opacity(red)
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .offset(x: 0, y: -25)
                .animation(.easeInOut)
                
            Color(.yellow)
                .opacity(yellow)
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .offset(x: 0, y: 2)
                .animation(.easeInOut)
            
            Color(.green)
                .opacity(green)
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .offset(x: 0, y: 26)
                .animation(.easeInOut)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(red: 0.7, yellow: 0.7, green: 0.5)
    }
}
